object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 326
  Top = 113
  Height = 795
  Width = 1395
  object ADOCDecanat: TADOConnection
    CommandTimeout = 90
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=This fish riba;Persist Security Inf' +
      'o=True;User ID=ProgramsUser;Initial Catalog=Decanat;Data Source=' +
      'SQL2008R2;Use Procedure for Prepare=1;Auto Translate=True;Packet' +
      ' Size=4096;Workstation ID=NONSTYLE;Use Encryption for Data=False' +
      ';Tag with column collation when possible=False'
    ConnectionTimeout = 90
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 16
  end
  object ADODSFaculties: TADODataSet
    Active = True
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'SELECT ID, FacultyShortName, FacultyName, DeanNameF, DeanNameI, ' +
      'DeanNameO, DeanNameS, Department,'#13#10'case when Department=1 then '#39 +
      '(O) '#39' else '#39'('#1047') '#39' end+FacultyShortName as FN, FacultyNameRP, Fac' +
      'ultyPhone'#13#10'from Faculty'#13#10'WHERE id in'#13#10'('#13#10'select ss1.idFaculty fr' +
      'om'#13#10'('#13#10'select idFaculty, idSecurityGroup'#13#10#13#10'from securitygroupvi' +
      'siblegroups'#13#10#13#10'where idSecurityGroup in'#13#10#13#10'(select idGroup from ' +
      'securityUser where login=:login)'#13#10')ss1 join'#13#10'('#13#10'select idGroup f' +
      'rom SecurityAccessLevel where isVisible=1'#13#10')ss2 on ss1.idSecurit' +
      'yGroup=ss2.idGroup'#13#10')'#13#10'ORDER BY Department, FacultyName'#13#10
    Parameters = <
      item
        Name = 'login'
        DataType = ftString
        Size = 255
        Value = ''
      end>
    Prepared = True
    Left = 128
    Top = 16
    object ADODSFacultiesID: TAutoIncField
      DisplayWidth = 3
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADODSFacultiesDepartment: TWordField
      DisplayWidth = 9
      FieldName = 'Department'
    end
    object ADODSFacultiesFacultyName: TStringField
      DisplayWidth = 14
      FieldName = 'FacultyName'
      Size = 50
    end
    object ADODSFacultiesFacultyShortName: TWideStringField
      DisplayWidth = 6
      FieldName = 'FacultyShortName'
      Size = 50
    end
    object ADODSFacultiesDeanNameF: TWideStringField
      DisplayWidth = 10
      FieldName = 'DeanNameF'
      Size = 50
    end
    object ADODSFacultiesDeanNameI: TWideStringField
      DisplayWidth = 9
      FieldName = 'DeanNameI'
      Size = 50
    end
    object ADODSFacultiesDeanNameO: TWideStringField
      DisplayWidth = 9
      FieldName = 'DeanNameO'
      Size = 50
    end
    object ADODSFacultiesDeanNameS: TWideStringField
      FieldName = 'DeanNameS'
      ReadOnly = True
      Size = 55
    end
    object ADODSFacultiesFN: TWideStringField
      FieldName = 'FN'
      ReadOnly = True
      Size = 53
    end
    object ADODSFacultiesFacultyNameRP: TWideMemoField
      FieldName = 'FacultyNameRP'
      BlobType = ftWideMemo
    end
    object ADODSFacultiesFacultyPhone: TWideStringField
      FieldName = 'FacultyPhone'
      FixedChar = True
      Size = 10
    end
  end
  object DSFaculties: TDataSource
    DataSet = ADODSFaculties
    Left = 128
    Top = 64
  end
  object ADODSGroups: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'SELECT g.ID, g.kurs, g.IDFaculty, g.Status, coalesce(gn.GroupNam' +
      'e, '#39#1041#1077#1079#1099#1084#1103#1085#1085#1072#1103#39') as GroupName, g.DateOfExpiry,'#13#10'sum(case when sd' +
      '.status=0 then 1 else 0 end) as CountStudent,'#13#10'sum(case when sd.' +
      'status=1 then 1 else 0 end) as CountExpelled,'#13#10'sum(case when sd.' +
      'status=2 then 1 else 0 end) as CountSabbatical,'#13#10'sum(case when s' +
      'd.status=3 then 1 else 0 end) as CountGraduated,'#13#10'sum(case when ' +
      'sd.status=4 then 1 else 0 end) as CountDeleted'#13#10'FROM [Group] g'#13#10 +
      'left JOIN [WorkCurriculum] wc on g.id=wc.idGroup'#13#10'left JOIN [Gro' +
      'upNameByPlanNumber] gn on (wc.idPlan=gn.idPlan) and (g.kurs=gn.k' +
      'urs) and (g.NumberGroup=gn.NumberGroup)'#13#10'left join StudentData s' +
      'd on g.id=sd.idGroup'#13#10'WHERE IDFaculty=:ID'#13#10'and g.id in (select i' +
      'dGroup from SecurityGroupVisibleGroups where idSecurityGroup=:ID' +
      'Security) '#13#10'group by g.id, gn.groupName, g.kurs, g.idFaculty, g.' +
      'status, g.DateOfExpiry'#13#10'order by g.kurs, g.ID, GroupName'
    CommandTimeout = 90
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'IDSecurity'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    Left = 216
    Top = 16
    object ADODSGroupsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADODSGroupsGroupName: TStringField
      FieldName = 'GroupName'
      Size = 50
    end
    object ADODSGroupskurs: TIntegerField
      FieldName = 'kurs'
    end
    object ADODSGroupsIDFaculty: TIntegerField
      FieldName = 'IDFaculty'
    end
    object ADODSGroupsStatus: TWordField
      FieldName = 'Status'
    end
    object ADODSGroupsDateOfExpiry: TDateTimeField
      FieldName = 'DateOfExpiry'
    end
    object ADODSGroupsCountStudent: TIntegerField
      FieldName = 'CountStudent'
      ReadOnly = True
    end
    object ADODSGroupsCountExpelled: TIntegerField
      FieldName = 'CountExpelled'
      ReadOnly = True
    end
    object ADODSGroupsCountSabbatical: TIntegerField
      FieldName = 'CountSabbatical'
      ReadOnly = True
    end
    object ADODSGroupsCountGraduated: TIntegerField
      FieldName = 'CountGraduated'
      ReadOnly = True
    end
    object ADODSGroupsCountDeleted: TIntegerField
      FieldName = 'CountDeleted'
      ReadOnly = True
    end
  end
  object DSGroups: TDataSource
    DataSet = ADODSGroups
    Left = 216
    Top = 64
  end
  object DSStudentData: TDataSource
    DataSet = adodsStudentData
    Left = 688
    Top = 160
  end
  object adodsStudentData: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'select'#13#10#9'ID, IDGroup, NameF, NameI, NameO, NameS, Photo, YearOfL' +
      'eave, sex,'#13#10#9'BirthDate, BirthPlace,'#13#10#9'EducationLevel, EducationN' +
      'ight, EducationInstitution, EducationEndYear,'#13#10#9'Job, JobStage, J' +
      'obOrganization, JobProfession,'#13#10#9'ForeignLanguage,'#13#10#9'PassportSeri' +
      'es, PassportNumber, PassportIssueWho, PassportIssueDate, Registr' +
      'ation, PhoneNumber,'#13#10#9'FatherNameF, FatherNameN, FatherNameO, Fat' +
      'herJobOrganization, FatherJobProfession, FatherRegistrationEqual' +
      'Actual, FatherRegistrationAddress, FatherActualAddress, FatherPh' +
      'oneNumber,'#13#10#9'MotherNameF, MotherNameN, MotherNameO, MotherJobOrg' +
      'anization, MotherJobProfession, MotherRegistrationEqualActual, M' +
      'otherActualAddress, MotherRegistrationAddress, MotherPhoneNumber' +
      'l,'#13#10#9'RecordBookNumber, EducationConditions, AgreementNumber, Agr' +
      'eementDate, Citizenship,'#13#10#9'AcceptedAsStudent, AcceptedYear, Acce' +
      'ptedFrom, AcceptedOrderNumber, AcceptedDate, Stipend, BenefitDoc' +
      'ument, Benefit, [Status],'#13#10#9'OrderFirstKurs, DateFirstKursOrder, ' +
      'OrderSecondKurs, DateSecondKursOrder, OrderThirdKurs, DateThirdK' +
      'ursOrder, OrderFourthKurs, DateFourthKursOrder, OrderFifthKurs, ' +
      'DateFifthKursOrder,'#13#10#9'Marks, extensionSemester1, extensionSemest' +
      'er2, extensionSemester1date, extensionSemester2date,'#13#10#9' igaExam1' +
      'Name, igaExam1Result, igaExam2Name, igaExam2Result, igaExam3Name' +
      ', igaExam3Result, igaProtocolNumber, igaProtocolDate, igaSpecial' +
      'ity,'#13#10' igaDefence1Name, igaDefence1Result, igaDefence2Name, igaD' +
      'efence2Result, igaDefence3Name, igaDefence3Result, igaExamCount,' +
      ' igaDefenceCount,'#13#10#9'workBeforeVuzName, workBeforeVuzAddress, wor' +
      'kBeforeVuzPost, workBeforeVuzExperience, workDuringVuzName, work' +
      'DuringVuzAddress, workDuringVuzPost,'#13#10' workDuringVuzDateIn, work' +
      'DuringVuzDateOut, workDuringVuzOfficial, workAchievement, workAf' +
      'terVuzName, workAfterVuzAddress, workAfterVuzPost, workAfterVuzP' +
      'rofile, workAfterVuzOfficial, workAfterVuzDocument'#13#10', AdrProgP, ' +
      'AdrProg'#13#10#13#10'FROM StudentData'#13#10'where ID=:ID'#13#10'order by NameS'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    Left = 688
    Top = 112
    object adodsStudentDataID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adodsStudentDataIDGroup: TIntegerField
      FieldName = 'IDGroup'
    end
    object adodsStudentDataNameF: TWideStringField
      FieldName = 'NameF'
      Size = 50
    end
    object adodsStudentDataNameI: TWideStringField
      FieldName = 'NameI'
      Size = 50
    end
    object adodsStudentDataNameO: TWideStringField
      FieldName = 'NameO'
      Size = 50
    end
    object adodsStudentDataNameS: TWideStringField
      FieldName = 'NameS'
      ReadOnly = True
      Size = 56
    end
    object adodsStudentDataPhoto: TBlobField
      FieldName = 'Photo'
    end
    object adodsStudentDataYearOfLeave: TStringField
      FieldName = 'YearOfLeave'
      Size = 50
    end
    object adodsStudentDatasex: TBooleanField
      FieldName = 'sex'
    end
    object adodsStudentDataBirthDate: TDateTimeField
      FieldName = 'BirthDate'
    end
    object adodsStudentDataBirthPlace: TWideStringField
      FieldName = 'BirthPlace'
      Size = 300
    end
    object adodsStudentDataEducationLevel: TWordField
      FieldName = 'EducationLevel'
    end
    object adodsStudentDataEducationNight: TBooleanField
      FieldName = 'EducationNight'
    end
    object adodsStudentDataEducationInstitution: TStringField
      FieldName = 'EducationInstitution'
      Size = 150
    end
    object adodsStudentDataEducationEndYear: TWideStringField
      FieldName = 'EducationEndYear'
      Size = 50
    end
    object adodsStudentDataJob: TBooleanField
      FieldName = 'Job'
    end
    object adodsStudentDataJobStage: TWideStringField
      FieldName = 'JobStage'
      Size = 50
    end
    object adodsStudentDataJobOrganization: TWideStringField
      FieldName = 'JobOrganization'
      Size = 150
    end
    object adodsStudentDataJobProfession: TWideStringField
      FieldName = 'JobProfession'
      Size = 150
    end
    object adodsStudentDataForeignLanguage: TIntegerField
      FieldName = 'ForeignLanguage'
    end
    object adodsStudentDataPassportSeries: TWideStringField
      FieldName = 'PassportSeries'
      Size = 50
    end
    object adodsStudentDataPassportNumber: TWideStringField
      FieldName = 'PassportNumber'
      Size = 50
    end
    object adodsStudentDataPassportIssueWho: TWideStringField
      FieldName = 'PassportIssueWho'
      Size = 300
    end
    object adodsStudentDataPassportIssueDate: TDateTimeField
      FieldName = 'PassportIssueDate'
    end
    object adodsStudentDataRegistration: TWideStringField
      FieldName = 'Registration'
      Size = 300
    end
    object adodsStudentDataPhoneNumber: TWideStringField
      FieldName = 'PhoneNumber'
      Size = 50
    end
    object adodsStudentDataFatherNameF: TWideStringField
      FieldName = 'FatherNameF'
      Size = 50
    end
    object adodsStudentDataFatherNameN: TWideStringField
      FieldName = 'FatherNameN'
      Size = 50
    end
    object adodsStudentDataFatherNameO: TWideStringField
      FieldName = 'FatherNameO'
      Size = 50
    end
    object adodsStudentDataFatherJobOrganization: TWideStringField
      FieldName = 'FatherJobOrganization'
      Size = 150
    end
    object adodsStudentDataFatherJobProfession: TWideStringField
      FieldName = 'FatherJobProfession'
      Size = 50
    end
    object adodsStudentDataFatherRegistrationEqualActual: TBooleanField
      FieldName = 'FatherRegistrationEqualActual'
    end
    object adodsStudentDataFatherRegistrationAddress: TWideStringField
      FieldName = 'FatherRegistrationAddress'
      Size = 255
    end
    object adodsStudentDataFatherActualAddress: TWideStringField
      FieldName = 'FatherActualAddress'
      Size = 255
    end
    object adodsStudentDataFatherPhoneNumber: TWideStringField
      FieldName = 'FatherPhoneNumber'
      Size = 50
    end
    object adodsStudentDataMotherNameF: TWideStringField
      FieldName = 'MotherNameF'
      Size = 50
    end
    object adodsStudentDataMotherNameN: TWideStringField
      FieldName = 'MotherNameN'
      Size = 50
    end
    object adodsStudentDataMotherNameO: TWideStringField
      FieldName = 'MotherNameO'
      Size = 50
    end
    object adodsStudentDataMotherJobOrganization: TWideStringField
      FieldName = 'MotherJobOrganization'
      Size = 150
    end
    object adodsStudentDataMotherJobProfession: TWideStringField
      FieldName = 'MotherJobProfession'
      Size = 50
    end
    object adodsStudentDataMotherRegistrationEqualActual: TBooleanField
      FieldName = 'MotherRegistrationEqualActual'
    end
    object adodsStudentDataMotherActualAddress: TWideStringField
      FieldName = 'MotherActualAddress'
      Size = 300
    end
    object adodsStudentDataMotherRegistrationAddress: TWideStringField
      FieldName = 'MotherRegistrationAddress'
      Size = 300
    end
    object adodsStudentDataMotherPhoneNumberl: TWideStringField
      FieldName = 'MotherPhoneNumberl'
      Size = 50
    end
    object adodsStudentDataRecordBookNumber: TWideStringField
      FieldName = 'RecordBookNumber'
      Size = 50
    end
    object adodsStudentDataEducationConditions: TWordField
      FieldName = 'EducationConditions'
    end
    object adodsStudentDataAgreementNumber: TWideStringField
      FieldName = 'AgreementNumber'
      Size = 50
    end
    object adodsStudentDataAgreementDate: TDateTimeField
      FieldName = 'AgreementDate'
    end
    object adodsStudentDataAcceptedAsStudent: TBooleanField
      FieldName = 'AcceptedAsStudent'
    end
    object adodsStudentDataAcceptedYear: TWideStringField
      FieldName = 'AcceptedYear'
      Size = 50
    end
    object adodsStudentDataAcceptedFrom: TWideStringField
      FieldName = 'AcceptedFrom'
      Size = 150
    end
    object adodsStudentDataAcceptedOrderNumber: TWideStringField
      FieldName = 'AcceptedOrderNumber'
      Size = 50
    end
    object adodsStudentDataAcceptedDate: TDateTimeField
      FieldName = 'AcceptedDate'
    end
    object adodsStudentDataStipend: TIntegerField
      FieldName = 'Stipend'
    end
    object adodsStudentDataBenefitDocument: TWideStringField
      FieldName = 'BenefitDocument'
      Size = 100
    end
    object adodsStudentDataBenefit: TIntegerField
      FieldName = 'Benefit'
    end
    object adodsStudentDataStatus: TWordField
      FieldName = 'Status'
    end
    object adodsStudentDataOrderFirstKurs: TWideStringField
      FieldName = 'OrderFirstKurs'
      Size = 50
    end
    object adodsStudentDataDateFirstKursOrder: TDateTimeField
      FieldName = 'DateFirstKursOrder'
    end
    object adodsStudentDataOrderSecondKurs: TWideStringField
      FieldName = 'OrderSecondKurs'
      Size = 50
    end
    object adodsStudentDataDateSecondKursOrder: TDateTimeField
      FieldName = 'DateSecondKursOrder'
    end
    object adodsStudentDataOrderThirdKurs: TWideStringField
      FieldName = 'OrderThirdKurs'
      Size = 50
    end
    object adodsStudentDataDateThirdKursOrder: TDateTimeField
      FieldName = 'DateThirdKursOrder'
    end
    object adodsStudentDataOrderFourthKurs: TWideStringField
      FieldName = 'OrderFourthKurs'
      Size = 50
    end
    object adodsStudentDataDateFourthKursOrder: TDateTimeField
      FieldName = 'DateFourthKursOrder'
    end
    object adodsStudentDataOrderFifthKurs: TWideStringField
      FieldName = 'OrderFifthKurs'
      Size = 50
    end
    object adodsStudentDataDateFifthKursOrder: TDateTimeField
      FieldName = 'DateFifthKursOrder'
    end
    object adodsStudentDataMarks: TIntegerField
      FieldName = 'Marks'
    end
    object adodsStudentDataextensionSemester1: TBooleanField
      FieldName = 'extensionSemester1'
    end
    object adodsStudentDataextensionSemester2: TBooleanField
      FieldName = 'extensionSemester2'
    end
    object adodsStudentDataextensionSemester1date: TDateTimeField
      FieldName = 'extensionSemester1date'
    end
    object adodsStudentDataextensionSemester2date: TDateTimeField
      FieldName = 'extensionSemester2date'
    end
    object adodsStudentDataigaExam1Name: TWideStringField
      FieldName = 'igaExam1Name'
      Size = 500
    end
    object adodsStudentDataigaExam1Result: TSmallintField
      FieldName = 'igaExam1Result'
    end
    object adodsStudentDataigaExam2Name: TWideStringField
      FieldName = 'igaExam2Name'
      Size = 500
    end
    object adodsStudentDataigaExam2Result: TSmallintField
      FieldName = 'igaExam2Result'
    end
    object adodsStudentDataigaExam3Name: TWideStringField
      FieldName = 'igaExam3Name'
      Size = 500
    end
    object adodsStudentDataigaExam3Result: TSmallintField
      FieldName = 'igaExam3Result'
    end
    object adodsStudentDataigaProtocolNumber: TStringField
      FieldName = 'igaProtocolNumber'
      Size = 500
    end
    object adodsStudentDataigaProtocolDate: TDateTimeField
      FieldName = 'igaProtocolDate'
    end
    object adodsStudentDataigaSpeciality: TIntegerField
      FieldName = 'igaSpeciality'
    end
    object adodsStudentDataworkBeforeVuzName: TWideStringField
      FieldName = 'workBeforeVuzName'
      Size = 250
    end
    object adodsStudentDataworkBeforeVuzAddress: TWideStringField
      FieldName = 'workBeforeVuzAddress'
      Size = 250
    end
    object adodsStudentDataworkBeforeVuzPost: TWideStringField
      FieldName = 'workBeforeVuzPost'
      Size = 250
    end
    object adodsStudentDataworkBeforeVuzExperience: TWideStringField
      FieldName = 'workBeforeVuzExperience'
      Size = 250
    end
    object adodsStudentDataworkDuringVuzName: TWideStringField
      FieldName = 'workDuringVuzName'
      Size = 250
    end
    object adodsStudentDataworkDuringVuzAddress: TWideStringField
      FieldName = 'workDuringVuzAddress'
      Size = 250
    end
    object adodsStudentDataworkDuringVuzPost: TWideStringField
      FieldName = 'workDuringVuzPost'
      Size = 250
    end
    object adodsStudentDataworkDuringVuzDateIn: TDateTimeField
      FieldName = 'workDuringVuzDateIn'
    end
    object adodsStudentDataworkDuringVuzDateOut: TDateTimeField
      FieldName = 'workDuringVuzDateOut'
    end
    object adodsStudentDataworkDuringVuzOfficial: TBooleanField
      FieldName = 'workDuringVuzOfficial'
    end
    object adodsStudentDataworkAchievement: TWideMemoField
      FieldName = 'workAchievement'
      BlobType = ftWideMemo
    end
    object adodsStudentDataworkAfterVuzName: TWideStringField
      FieldName = 'workAfterVuzName'
      Size = 250
    end
    object adodsStudentDataworkAfterVuzAddress: TWideStringField
      FieldName = 'workAfterVuzAddress'
      Size = 250
    end
    object adodsStudentDataworkAfterVuzPost: TWideStringField
      FieldName = 'workAfterVuzPost'
      Size = 250
    end
    object adodsStudentDataworkAfterVuzProfile: TBooleanField
      FieldName = 'workAfterVuzProfile'
    end
    object adodsStudentDataworkAfterVuzOfficial: TBooleanField
      FieldName = 'workAfterVuzOfficial'
    end
    object adodsStudentDataworkAfterVuzDocument: TIntegerField
      FieldName = 'workAfterVuzDocument'
    end
    object adodsStudentDataigaDefence1Name: TStringField
      FieldName = 'igaDefence1Name'
      Size = 500
    end
    object adodsStudentDataigaDefence1Result: TSmallintField
      FieldName = 'igaDefence1Result'
    end
    object adodsStudentDataigaDefence2Name: TWideStringField
      FieldName = 'igaDefence2Name'
      Size = 500
    end
    object adodsStudentDataigaDefence2Result: TSmallintField
      FieldName = 'igaDefence2Result'
    end
    object adodsStudentDataigaDefence3Name: TWideStringField
      FieldName = 'igaDefence3Name'
      Size = 500
    end
    object adodsStudentDataigaDefence3Result: TSmallintField
      FieldName = 'igaDefence3Result'
    end
    object adodsStudentDataigaExamCount: TSmallintField
      FieldName = 'igaExamCount'
    end
    object adodsStudentDataigaDefenceCount: TSmallintField
      FieldName = 'igaDefenceCount'
    end
    object adodsStudentDataCitizenship: TIntegerField
      FieldName = 'Citizenship'
    end
    object adodsStudentDataAdrProgP: TBooleanField
      FieldName = 'AdrProgP'
    end
    object adodsStudentDataAdrProg: TWideStringField
      FieldName = 'AdrProg'
      Size = 300
    end
  end
  object ADODSStudentList: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    Filtered = True
    CommandText = 
      'select sd.ID, sd.IDGroup, cast(g.id as nvarchar) as GroupName, g' +
      '.Kurs, sd.NameF, sd.NameI, sd.NameO, sd.NameS, sd.Marks, sd.Stat' +
      'us, sd.DateOfExpiry,'#13#10'case'#13#10'    when sd.EducationConditions=0 th' +
      'en '#39#1041#1102#1076#1078#1077#1090#39#13#10'    when sd.EducationConditions=1 then '#39#1062#1077#1083#1077#1074#1086#1077#39#13#10' ' +
      '   when sd.EducationConditions=2 then '#39#1050#1086#1084#1084#1077#1088#1094#1080#1103#39#13#10'else '#39#39' end a' +
      's EducationForm,'#13#10'case'#13#10'    when sd.status in (0,2,4) then 0'#13#10'  ' +
      '  else 1 end as statusgr,'#13#10'year(sd.DateOfExpiry) as yearDOE'#13#10'fro' +
      'm StudentData sd'#13#10'join [Group] g on sd.IDGroup=g.ID'#13#10'where g.IDF' +
      'aculty=:ID and     ( year(g.DateOfExpiry)>year(DATEADD(YEAR,-7,g' +
      'etdate())) or g.DateOfExpiry is null)'#13#10'and g.id in (select idGro' +
      'up from SecurityGroupVisibleGroups where idSecurityGroup=:IDSecu' +
      'rity)'#13#10'order by g.Kurs,g.ID,sd.NameS'
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'IDSecurity'
        Size = -1
        Value = Null
      end>
    Prepared = True
    Left = 696
    Top = 16
    object ADODSStudentListID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADODSStudentListIDGroup: TIntegerField
      FieldName = 'IDGroup'
    end
    object ADODSStudentListKurs: TIntegerField
      FieldName = 'Kurs'
    end
    object ADODSStudentListNameF: TStringField
      FieldName = 'NameF'
      Size = 50
    end
    object ADODSStudentListNameI: TStringField
      FieldName = 'NameI'
      Size = 50
    end
    object ADODSStudentListNameO: TStringField
      FieldName = 'NameO'
      Size = 50
    end
    object ADODSStudentListEducationForm: TStringField
      FieldName = 'EducationForm'
      ReadOnly = True
      Size = 9
    end
    object ADODSStudentListNameS: TStringField
      FieldName = 'NameS'
      ReadOnly = True
      Size = 56
    end
    object ADODSStudentListGroupName: TStringField
      FieldName = 'GroupName'
      Size = 50
    end
    object ADODSStudentListMarks: TIntegerField
      FieldName = 'Marks'
    end
    object ADODSStudentListStatus: TWordField
      FieldName = 'Status'
    end
    object ADODSStudentListDateOfExpiry: TDateTimeField
      FieldName = 'DateOfExpiry'
    end
  end
  object DSStudentList: TDataSource
    DataSet = ADODSStudentList
    Left = 688
    Top = 64
  end
  object ADODSEducation: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1089#1088#1077#1076#1085#1077#1077' '#1086#1073#1097#1077#1077#39' as eduType'#13#10'union all'#13#10'select 1,' +
      ' '#39#1085#1072#1095#1072#1083#1100#1085#1086#1077' '#1087#1088#1086#1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077#39#13#10'union all'#13#10'select 2, '#39#1089#1088#1077#1076#1085#1077#1077' '#1087#1088#1086 +
      #1092#1077#1089#1089#1080#1086#1085#1072#1083#1100#1085#1086#1077#39#13#10'union all'#13#10'select 3, '#39#1085#1077#1087#1086#1083#1085#1086#1077' '#1074#1099#1089#1096#1077#1077#39#13#10'union al' +
      'l'#13#10'select 4, '#39#1074#1099#1089#1096#1077#1077#39#13#10
    Parameters = <>
    Left = 40
    Top = 432
  end
  object DSEducation: TDataSource
    DataSet = ADODSEducation
    Left = 40
    Top = 480
  end
  object ADODSLanguage: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1072#1085#1075#1083#1080#1081#1089#1082#1080#1081#39' as language'#13#10'union all'#13#10'select 1, '#39 +
      #1085#1077#1084#1077#1094#1082#1080#1081#39#13#10'union all'#13#10'select 2, '#39#1092#1088#1072#1085#1094#1091#1079#1089#1082#1080#1081#39#13#10'union all'#13#10'select' +
      ' 3, '#39#1080#1090#1072#1083#1100#1103#1085#1089#1082#1080#1081#39#13#10'union all'#13#10'select 4, '#39#1088#1091#1089#1089#1082#1080#1081#39#13#10
    Parameters = <>
    Left = 136
    Top = 432
  end
  object DSLanguage: TDataSource
    DataSet = ADODSLanguage
    Left = 136
    Top = 480
  end
  object ADODSStatuses: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1089#1090#1091#1076#1077#1085#1090#39' as status'#13#10'union all'#13#10'select 1, '#39#1086#1090#1095#1080#1089 +
      #1083#1077#1085#39#13#10'union all'#13#10'select 2, '#39#1072#1082#1072#1076#1077#1084#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1087#1091#1089#1082#39#13#10'union all'#13#10'se' +
      'lect 3, '#39#1074#1099#1087#1091#1089#1082#1085#1080#1082#39#13#10'union all'#13#10'select 4, '#39#1089#1083#1091#1096#1072#1090#1077#1083#1100#39#13#10'union all' +
      #13#10'select 5, '#39#1091#1076#1072#1083#1105#1085#1085#1099#1081#39#13#10
    Parameters = <>
    Left = 232
    Top = 432
  end
  object DSStatuses: TDataSource
    DataSet = ADODSStatuses
    Left = 232
    Top = 480
  end
  object ADODSEducationContitions: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1041#1102#1076#1078#1077#1090#39' as condition'#13#10'union all'#13#10'select 1, '#39#1062#1077#1083 +
      #1077#1074#1086#1077#39#13#10'union all'#13#10'select 2, '#39#1050#1086#1084#1084#1077#1088#1094#1080#1103#39
    Parameters = <>
    Left = 352
    Top = 432
  end
  object DSEducationContitions: TDataSource
    DataSet = ADODSEducationContitions
    Left = 352
    Top = 480
  end
  object ADOSQLExecutor: TADOCommand
    Connection = ADOCDecanat
    Prepared = True
    Parameters = <>
    Left = 40
    Top = 64
  end
  object adodsAddGroup: TADODataSet
    Connection = ADOCDecanat
    CommandText = 'usp_GroupAdd;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@kurs'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@idFaculty'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idSecurityGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 160
    Top = 216
  end
  object adodsAddStudent: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'insert into StudentData'#13#10'(nameF, nameI, nameO, idGroup)'#13#10'output ' +
      'inserted.id, inserted.nameS, inserted.marks'#13#10'values(:nameF, :nam' +
      'eI, :nameO, :idGroup)'
    Parameters = <
      item
        Name = 'nameF'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end
      item
        Name = 'nameI'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end
      item
        Name = 'nameO'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = ''
      end
      item
        Name = 'idGroup'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    Left = 688
    Top = 208
    object adodsAddStudentid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object adodsAddStudentnameS: TStringField
      FieldName = 'nameS'
      ReadOnly = True
      Size = 56
    end
    object adodsAddStudentmarks: TIntegerField
      FieldName = 'marks'
    end
  end
  object adodsGroupName: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    Filtered = True
    CommandText = 
      'select id, idPlan, GroupName, kurs, NumberGroup'#13#10'from GroupNameB' +
      'yPlanNumber'#13#10'where idPlan=:id '#13#10'order by kurs, NumberGroup'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 320
    Top = 16
  end
  object dsGroupName: TDataSource
    DataSet = adodsGroupName
    Left = 320
    Top = 64
  end
  object adodsKurs: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 1 as kurs, 1 as kurs'#13#10'union all'#13#10'select 2 as kurs, 2 as k' +
      'urs'#13#10'union all'#13#10'select 3 as kurs, 3 as kurs'#13#10'union all'#13#10'select 4' +
      ' as kurs, 4 as kurs'#13#10'union all'#13#10'select 5 as kurs, 5 as kurs'
    Parameters = <>
    Left = 464
    Top = 432
  end
  object dsKurs: TDataSource
    DataSet = adodsKurs
    Left = 464
    Top = 480
  end
  object adodsAddCurriculum: TADODataSet
    Connection = ADOCDecanat
    CommandText = 
      'exec usp_AddCurriculum :idGroup, :idPlan,'#13#10':SpecialityCode, :Spe' +
      'ciality, :Specialization, :Qualification, :SpecialityAbbreviatio' +
      'n, :PlanGeneration'
    Parameters = <
      item
        Name = 'idGroup'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'idPlan'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SpecialityCode'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Speciality'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'Specialization'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'Qualification'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'SpecialityAbbreviation'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'PlanGeneration'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    Prepared = True
    Left = 272
    Top = 240
    object adodsAddCurriculumID: TIntegerField
      FieldName = 'ID'
    end
  end
  object adodsWorkCurriculum: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select id, idPlan, idGroup, SpecialityCode, Speciality, Speciali' +
      'zation, Qualification, SpecialityAbbreviation, PlanGeneration'#13#10'f' +
      'rom WorkCurriculum'#13#10'where idGroup=:idGroup'
    CommandTimeout = 90
    Parameters = <
      item
        Name = 'idGroup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    Left = 456
    Top = 16
    object adodsWorkCurriculumid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adodsWorkCurriculumidPlan: TIntegerField
      FieldName = 'idPlan'
    end
    object adodsWorkCurriculumidGroup: TIntegerField
      FieldName = 'idGroup'
    end
    object adodsWorkCurriculumSpecialityCode: TWideStringField
      FieldName = 'SpecialityCode'
      Size = 50
    end
    object adodsWorkCurriculumSpeciality: TWideStringField
      FieldName = 'Speciality'
      Size = 255
    end
    object adodsWorkCurriculumSpecialization: TWideStringField
      FieldName = 'Specialization'
      Size = 255
    end
    object adodsWorkCurriculumQualification: TWideStringField
      FieldName = 'Qualification'
      Size = 255
    end
    object adodsWorkCurriculumSpecialityAbbreviation: TWideStringField
      FieldName = 'SpecialityAbbreviation'
      Size = 50
    end
    object adodsWorkCurriculumPlanGeneration: TWordField
      FieldName = 'PlanGeneration'
    end
  end
  object dsWorkCurriculum: TDataSource
    DataSet = adodsWorkCurriculum
    Left = 456
    Top = 64
  end
  object adodsGroupData: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'SELECT g.ID, coalesce(gn.GroupName, '#39#1041#1077#1079#1099#1084#1103#1085#1085#1072#1103#39') as GroupName, ' +
      'g.NumberGroup, g.kurs, g.IDFaculty, KCP, ForeingGL, ForeingKCP,p' +
      'rice, GosZad,filial,pps'#13#10'FROM [Group] g'#13#10'left JOIN [WorkCurricul' +
      'um] wc on g.id=wc.idGroup'#13#10'left JOIN [GroupNameByPlanNumber] gn ' +
      'on wc.idPlan=gn.idPlan and g.kurs=gn.kurs and g.NumberGroup=gn.N' +
      'umberGroup'#13#10'WHERE (g.id=:id) '
    CommandTimeout = 90
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    Left = 216
    Top = 112
    object adodsGroupDataID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adodsGroupDataGroupName: TWideStringField
      FieldName = 'GroupName'
      ReadOnly = True
      Size = 50
    end
    object adodsGroupDatakurs: TIntegerField
      FieldName = 'kurs'
    end
    object adodsGroupDataIDFaculty: TIntegerField
      FieldName = 'IDFaculty'
    end
    object adodsGroupDataNumberGroup: TWordField
      FieldName = 'NumberGroup'
    end
    object adodsGroupDataKCP: TWordField
      FieldName = 'KCP'
    end
    object adodsGroupDataForeingGL: TBooleanField
      FieldName = 'ForeingGL'
    end
    object adodsGroupDataForeingKCP: TWordField
      FieldName = 'ForeingKCP'
    end
    object adodsGroupDataprice: TIntegerField
      FieldName = 'price'
    end
    object adodsGroupDataGosZad: TIntegerField
      FieldName = 'GosZad'
    end
    object adodsGroupDatafilial: TIntegerField
      FieldName = 'filial'
    end
    object adodsGroupDatapps: TIntegerField
      FieldName = 'pps'
    end
  end
  object dsGroupData: TDataSource
    DataSet = adodsGroupData
    Left = 216
    Top = 160
  end
  object adodsAddWorkCurrDisc: TADODataSet
    Connection = ADOCDecanat
    CommandText = 
      'exec usp_AddWorkCurriculumDiscipline'#13#10#9':idWorkCurriculum, :Semes' +
      'ter, :idSubject,'#13#10#9':HourLecture, :HourSeminar, :HourPractice, :H' +
      'ourSmallGroup, :HourIndividual, :HourSelfWork,'#13#10#9':ControlTest, :' +
      'ControlExamination, :ControlCourseWork'
    Parameters = <
      item
        Name = 'idWorkCurriculum'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Semester'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'idSubject'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'HourLecture'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'HourSeminar'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'HourPractice'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'HourSmallGroup'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'HourIndividual'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'HourSelfWork'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ControlTest'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'ControlExamination'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'ControlCourseWork'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Prepared = True
    Left = 568
    Top = 208
    object adodsAddWorkCurrDiscidSubject: TIntegerField
      FieldName = 'idSubject'
    end
    object adodsAddWorkCurrDiscid: TIntegerField
      FieldName = 'id'
    end
  end
  object adodsSubjects: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select id, SubjectName from [Subject]'#13#10'order by SubjectName'
    Parameters = <>
    Left = 560
    Top = 432
  end
  object dsSubjects: TDataSource
    DataSet = adodsSubjects
    Left = 560
    Top = 480
  end
  object adodsSession: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    Filtered = True
    LockType = ltBatchOptimistic
    CommandText = 
      'select se.[ID]'#13#10'      ,se.[ControlForm]'#13#10'      ,se.[Result]'#13#10'   ' +
      '   ,se.[Semester]'#13#10'      ,se.[HourSum]'#13#10'      ,se.[IdSubject]'#13#10' ' +
      '     ,se.[IdStudent]'#13#10'      ,se.[ManualAdded]'#13#10'      ,se.[IdWork' +
      'CurriculumDiscipline]'#13#10'      ,se.[IsCalculated]'#13#10'      ,sd.NameS' +
      #13#10', DateChan'#13#10'from studentExamination se'#13#10'join StudentData sd on' +
      ' se.idStudent=sd.id'#13#10'join [Group] g on sd.idGroup=g.id'#13#10'where (g' +
      '.id=:id)'#13#10'and (sd.id between :lowID and :HighID) and (sd.[status' +
      '] in (0,2,4))'#13#10
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'lowID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'HighID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 808
    Top = 16
    object adodsSessionID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adodsSessionControlForm: TWordField
      FieldName = 'ControlForm'
    end
    object adodsSessionResult: TWordField
      FieldName = 'Result'
    end
    object adodsSessionSemester: TWordField
      FieldName = 'Semester'
    end
    object adodsSessionHourSum: TSmallintField
      FieldName = 'HourSum'
    end
    object adodsSessionManualAdded: TBooleanField
      FieldName = 'ManualAdded'
    end
    object adodsSessionidWorkCurriculumDiscipline: TIntegerField
      FieldName = 'IdWorkCurriculumDiscipline'
    end
    object adodsSessionSubjectName: TStringField
      FieldKind = fkLookup
      FieldName = 'SubjectName'
      LookupDataSet = adodsSubjects
      LookupKeyFields = 'id'
      LookupResultField = 'SubjectName'
      KeyFields = 'idSubject'
      Size = 255
      Lookup = True
    end
    object adodsSessionnameS: TStringField
      FieldName = 'NameS'
      ReadOnly = True
      Size = 56
    end
    object adodsSessionIsCalculated: TBooleanField
      FieldName = 'IsCalculated'
    end
    object adodsSessionIdSubject: TIntegerField
      FieldName = 'IdSubject'
    end
    object adodsSessionIdStudent: TIntegerField
      FieldName = 'IdStudent'
    end
    object adodsSessionDateChan: TDateTimeField
      FieldName = 'DateChan'
    end
  end
  object dsSession: TDataSource
    DataSet = adodsSession
    Left = 808
    Top = 64
  end
  object adodsSubjectFilter: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select s.id as IdSubject, s.SubjectName'#13#10'from [Subject] s'#13#10'where' +
      ' s.id in'#13#10'(select wcd.idSubject'#13#10'from WorkCurriculumDiscipline w' +
      'cd'#13#10'join WorkCurriculum wc on wc.id=wcd.idWorkCurriculum'#13#10'where ' +
      '(wc.idGroup=:id) and (wcd.semester between :SB and :SE) and (wcd' +
      '.idSubject=s.id) and ((wcd.controlTest=1)or(wcd.controlExaminati' +
      'on=1)or(wcd.controlCourseWork=1))'#13#10')order by s.SubjectName, s.id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SB'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end
      item
        Name = 'SE'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    Left = 648
    Top = 432
    object adodsSubjectFilteridSubject: TIntegerField
      FieldName = 'idSubject'
    end
    object adodsSubjectFilterSubjectName: TStringField
      FieldKind = fkLookup
      FieldName = 'SubjectName'
      LookupDataSet = adodsSubjects
      LookupKeyFields = 'id'
      LookupResultField = 'SubjectName'
      KeyFields = 'idSubject'
      Size = 255
      Lookup = True
    end
  end
  object dsSubjectFilter: TDataSource
    DataSet = adodsSubjectFilter
    Left = 648
    Top = 480
  end
  object adodsSecurityGroup: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select id, GroupName from SecurityGroup'
    Parameters = <>
    Prepared = True
    Left = 40
    Top = 544
    object adodsSecurityGroupid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adodsSecurityGroupGroupName: TWideStringField
      FieldName = 'GroupName'
      Size = 255
    end
  end
  object dsSecurityGroup: TDataSource
    DataSet = adodsSecurityGroup
    Left = 40
    Top = 592
  end
  object adodsSecurityUser: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select id, idGroup, login, FIO'#13#10'from SecurityUser'
    DataSource = dsSecurityGroup
    IndexFieldNames = 'idGroup'
    MasterFields = 'id'
    Parameters = <>
    Prepared = True
    Left = 144
    Top = 544
    object adodsSecurityUserid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adodsSecurityUseridGroup: TIntegerField
      FieldName = 'idGroup'
    end
    object adodsSecurityUserlogin: TWideStringField
      FieldName = 'login'
      Size = 255
    end
    object adodsSecurityUserFIO: TWideStringField
      FieldName = 'FIO'
      Size = 255
    end
  end
  object dsSecurityUser: TDataSource
    DataSet = adodsSecurityUser
    Left = 144
    Top = 592
  end
  object dsSecurityAccessLevel: TDataSource
    DataSet = adodsSecurityAccessLevel
    Left = 264
    Top = 592
  end
  object adodsSecurityAccessLevel: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select sa.id, idGroup, idElement, isVisible, isVisibleTimeBegin,' +
      ' isVisibleTimeEnd, isEnable, isEnableTimeBegin, isEnableTimeEnd'#13 +
      #10'from SecurityAccessLevel sa'#13#10'join SecurityElementList se on sa.' +
      'idElement=se.id'#13#10'order by sa.idGroup, se.ElementName'
    DataSource = dsSecurityGroup
    IndexFieldNames = 'idGroup'
    MasterFields = 'id'
    Parameters = <>
    Prepared = True
    Left = 264
    Top = 544
    object adodsSecurityAccessLevelid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adodsSecurityAccessLevelidGroup: TIntegerField
      FieldName = 'idGroup'
    end
    object adodsSecurityAccessLevelidElement: TIntegerField
      FieldName = 'idElement'
    end
    object adodsSecurityAccessLevelelementName: TStringField
      FieldKind = fkLookup
      FieldName = 'elementName'
      LookupDataSet = adodsSecurityElementList
      LookupKeyFields = 'id'
      LookupResultField = 'ElementName'
      KeyFields = 'idElement'
      Size = 255
      Lookup = True
    end
    object adodsSecurityAccessLevelisVisible: TWordField
      FieldName = 'isVisible'
    end
    object adodsSecurityAccessLevelisEnable: TWordField
      FieldName = 'isEnable'
    end
    object adodsSecurityAccessLevelisVisibleTimeBegin: TWideStringField
      FieldName = 'isVisibleTimeBegin'
      Size = 10
    end
    object adodsSecurityAccessLevelisVisibleTimeEnd: TWideStringField
      FieldName = 'isVisibleTimeEnd'
      Size = 10
    end
    object adodsSecurityAccessLevelisEnableTimeBegin: TWideStringField
      FieldName = 'isEnableTimeBegin'
      Size = 10
    end
    object adodsSecurityAccessLevelisEnableTimeEnd: TWideStringField
      FieldName = 'isEnableTimeEnd'
      Size = 10
    end
  end
  object adodsSecurityElementList: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select id, ElementName'#13#10'from SecurityElementList'
    Parameters = <>
    Prepared = True
    Left = 408
    Top = 298
  end
  object dsSecurityElementList: TDataSource
    DataSet = adodsSecurityElementList
    Left = 392
    Top = 592
  end
  object adodsSecurityVisibleGroups: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select sg.id, idSecurityGroup, sg.idFaculty, sg.idGroup,'#13#10'( coal' +
      'esce(gn.GroupName, '#39#1041#1077#1079#1099#1084#1103#1085#1085#1072#1103#39')+ case when g.status IN (1,3,5) ' +
      'then '#39' ('#1072#1088#1093'.) '#39' else '#39#39' end ) as GroupName, g.kurs,'#13#10'case when D' +
      'epartment=1 then '#39'(O) '#39' else '#39'('#1047') '#39' end+FacultyShortName as facu' +
      'ltyname'#13#10#13#10'from SecurityGroupVisibleGroups sg'#13#10'join [group] g on' +
      ' g.id=sg.idGroup'#13#10' left JOIN [WorkCurriculum] wc on g.id=wc.idGr' +
      'oup'#13#10'left JOIN [GroupNameByPlanNumber] gn on wc.idPlan=gn.idPlan' +
      ' and g.kurs=gn.kurs and g.NumberGroup=gn.NumberGroup'#13#10'join Facul' +
      'ty as f on g.idFaculty=f.id'#13#10'order by facultyname,g.kurs,GroupNa' +
      'me'
    DataSource = dsSecurityGroup
    IndexFieldNames = 'idSecurityGroup'
    MasterFields = 'id'
    Parameters = <>
    Prepared = True
    Left = 528
    Top = 544
    object adodsSecurityVisibleGroupsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adodsSecurityVisibleGroupsidSecurityGroup: TIntegerField
      FieldName = 'idSecurityGroup'
    end
    object adodsSecurityVisibleGroupsidFaculty: TIntegerField
      FieldName = 'idFaculty'
    end
    object adodsSecurityVisibleGroupsidGroup: TIntegerField
      FieldName = 'idGroup'
    end
    object adodsSecurityVisibleGroupsGroupName: TWideStringField
      FieldName = 'GroupName'
      ReadOnly = True
      Size = 58
    end
    object adodsSecurityVisibleGroupskurs: TWordField
      FieldName = 'kurs'
    end
    object adodsSecurityVisibleGroupsFacultyName: TWideStringField
      FieldName = 'FacultyName'
      Size = 50
    end
  end
  object dsSecurityVisibleGroups: TDataSource
    DataSet = adodsSecurityVisibleGroups
    Left = 528
    Top = 592
  end
  object adodsFacultiesGroupsTree: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'SELECT f.ID as f_ID, g.ID as g_ID,( coalesce(gn.GroupName, '#39#1041#1077#1079#1099 +
      #1084#1103#1085#1085#1072#1103#39')+ case when g.status IN (1,3,5) then '#39' ('#1072#1088#1093'.) '#39' else '#39#39' ' +
      'end ) as GroupName, g.kurs, g.IDFaculty,'#13#10'case when Department=1' +
      ' then '#39'(O) '#39' else '#39'('#1047') '#39' end+FacultyShortName as FacultyShortNam' +
      'e'#13#10'FROM [Group] g'#13#10'left JOIN [WorkCurriculum] wc on g.id=wc.idGr' +
      'oup'#13#10'left JOIN [GroupNameByPlanNumber] gn on wc.idPlan=gn.idPlan' +
      ' and g.kurs=gn.kurs and g.NumberGroup=gn.NumberGroup'#13#10'join Facul' +
      'ty as f on g.idFaculty=f.id'#13#10'where g.ID not in (select idGroup f' +
      'rom SecurityGroupVisibleGroups where idSecurityGroup=:id)'#13#10'order' +
      ' by f.ID ,f.FacultyName, g.kurs, GroupName'
    Parameters = <
      item
        Name = 'id'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    Prepared = True
    Left = 672
    Top = 544
    object adodsFacultiesGroupsTreef_ID: TAutoIncField
      DisplayWidth = 4
      FieldName = 'f_ID'
      ReadOnly = True
    end
    object adodsFacultiesGroupsTreeFacultyShortName: TWideStringField
      DisplayWidth = 11
      FieldName = 'FacultyShortName'
      Size = 50
    end
    object adodsFacultiesGroupsTreeg_ID: TAutoIncField
      DisplayWidth = 6
      FieldName = 'g_ID'
      ReadOnly = True
    end
    object adodsFacultiesGroupsTreeGroupName: TWideStringField
      DisplayWidth = 10
      FieldName = 'GroupName'
      ReadOnly = True
      Size = 50
    end
    object adodsFacultiesGroupsTreekurs: TIntegerField
      DisplayWidth = 10
      FieldName = 'kurs'
    end
    object adodsFacultiesGroupsTreeIDFaculty: TIntegerField
      DisplayWidth = 10
      FieldName = 'IDFaculty'
    end
  end
  object dsFacultiesGroupsTree: TDataSource
    DataSet = adodsFacultiesGroupsTree
    Left = 672
    Top = 592
  end
  object adodsGroupList: TADODataSet
    Active = True
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'SELECT g.ID, coalesce(gn.GroupName, '#39#1041#1077#1079#1099#1084#1103#1085#1085#1072#1103#39') as GroupName, ' +
      'g.kurs'#13#10'FROM [Group] g'#13#10'left JOIN [WorkCurriculum] wc on g.id=wc' +
      '.idGroup'#13#10'left JOIN [GroupNameByPlanNumber] gn on wc.idPlan=gn.i' +
      'dPlan and g.kurs=gn.kurs'
    Parameters = <>
    Left = 776
    Top = 432
  end
  object dsGroupList: TDataSource
    DataSet = adodsGroupList
    Left = 776
    Top = 480
  end
  object adodsSecurityGetRights: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'usp_SecurityGetRights;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@login'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = 'nonStyle'
      end
      item
        Name = '@password'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = 'dfqn,tq3'
      end>
    Prepared = True
    Left = 184
    Top = 499
    object adodsSecurityGetRightsCOLUMN1: TIntegerField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
    object adodsSecurityGetRightsidElement: TIntegerField
      FieldName = 'IDElement'
    end
    object adodsSecurityGetRightsisVisible: TWordField
      FieldName = 'IsVisible'
    end
    object adodsSecurityGetRightsisVisibleTimeBegin: TWideStringField
      FieldName = 'IsVisibleTimeBegin'
      Size = 10
    end
    object adodsSecurityGetRightsisVisibleTimeEnd: TWideStringField
      FieldName = 'IsVisibleTimeEnd'
      Size = 10
    end
    object adodsSecurityGetRightsisEnable: TWordField
      FieldName = 'IsEnable'
    end
    object adodsSecurityGetRightsisEnableTimeBegin: TWideStringField
      FieldName = 'IsEnableTimeBegin'
      Size = 10
    end
    object adodsSecurityGetRightsisEnableTimeEnd: TWideStringField
      FieldName = 'IsEnableTimeEnd'
      Size = 10
    end
    object adodsSecurityGetRightsCurrentDate: TWideStringField
      FieldName = 'CurrentDate'
      ReadOnly = True
      Size = 10
    end
    object adodsSecurityGetRightsIDGroup: TIntegerField
      FieldName = 'IDGroup'
    end
    object adodsSecurityGetRightsid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object adodsSecurityGetRightspasswordexpire: TDateTimeField
      FieldName = 'passwordexpire'
    end
    object adodsSecurityGetRightspasswordexpire1: TDateTimeField
      FieldName = 'passwordexpire1'
      ReadOnly = True
    end
  end
  object adodsSecurityUserAdd: TADODataSet
    Connection = ADOCDecanat
    CommandText = 'usp_SecurityUserAdd;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@login'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    Prepared = True
    Left = 144
    Top = 640
  end
  object adodsDepartmentInfo: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select id, prorectorNameF, prorectorNameI, prorectorNameO, prore' +
      'ctorNameS from DepartmentInfo'
    Parameters = <>
    Prepared = True
    Left = 40
    Top = 120
  end
  object dsDepartmentInfo: TDataSource
    DataSet = adodsDepartmentInfo
    Left = 40
    Top = 168
  end
  object adodsSessionDetails: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select ID, Theme, idStudentExamination'#13#10'from StudentExaminationD' +
      'etails'#13#10'where idStudentExamination=:id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 808
    Top = 120
  end
  object dsSessionDetails: TDataSource
    DataSet = adodsSessionDetails
    Left = 808
    Top = 168
  end
  object ADODSBenefit: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1085#1077#1090#39' as benefit'#13#10'union all'#13#10'select 1, '#39#1057#1080#1088#1086#1090#1099#39#13 +
      #10'union all'#13#10'select 2, '#39#1042#1086#1077#1085#1085#1086#1089#1083'.'#1080#1085#1074#1072#1083#1080#1076#1099#39#13#10'union all'#13#10'select 3, ' +
      #39#1055#1086#1076#1074#1077#1088#1075'.'#1074#1086#1079#1076'.'#1088#1072#1076#1080#1072#1094#1080#1080#39#13#10'union all'#13#10'select 4, '#39#1048#1085#1074#1072#1083#1080#1076#1099#39#13#10'union ' +
      'all'#13#10'select 5, '#39#1040'/'#1086' '#1087#1086' '#1079#1076#1086#1088#1086#1074#1100#1102#39#13#10'union all'#13#10'select 6, '#39#1040'/'#1086' '#1087#1086' '#1091 +
      #1093#1086#1076#1091' '#1079#1072' '#1088#1077#1073#1105#1085#1082#1086#1084#39#13#10
    Parameters = <>
    Left = 800
    Top = 560
  end
  object DSBenefit: TDataSource
    DataSet = ADODSBenefit
    Left = 784
    Top = 608
  end
  object ADODSWCDADDER: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    Filtered = True
    CommandText = 
      'SELECT s.SubjectName, '#13#10'wcd.semester, '#13#10'wcd.ID,'#13#10'wcd.hourclassto' +
      'tal'#9#13#10', wcd.HourLecture, wcd.HourSeminar, '#13#10'wcd.HourPractice, wc' +
      'd.HourSmallGroup, '#13#10'wcd.HourIndividual,wcd. HourSelfWork, '#13#10'wcd.' +
      'ControlTest,wcd.ControlExamination,wcd. ControlCourseWork'#13#10'FROM ' +
      '[WorkCurriculumDiscipline] as wcd'#13#10'JOIN [WorkCurriculum] as wc o' +
      'n wcd.idWorkCurriculum=wc.id'#13#10'join [Subject] as s on idSubject=s' +
      '.id'#13#10'WHERE (wc.idGroup=(select idgroup from studentdata where st' +
      'udentdata.id=:id))  and (wcd.semester between :SB1 and :SE1)'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SB1'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'SE1'
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 208
    Top = 360
    object ADODSWCDADDERID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADODSWCDADDERSubjectName: TWideStringField
      FieldName = 'SubjectName'
      Size = 255
    end
    object ADODSWCDADDERsemester: TWordField
      FieldName = 'semester'
    end
    object ADODSWCDADDERhourclasstotal: TSmallintField
      FieldName = 'hourclasstotal'
      ReadOnly = True
    end
    object ADODSWCDADDERHourLecture: TSmallintField
      FieldName = 'HourLecture'
    end
    object ADODSWCDADDERHourSeminar: TSmallintField
      FieldName = 'HourSeminar'
    end
    object ADODSWCDADDERHourPractice: TSmallintField
      FieldName = 'HourPractice'
    end
    object ADODSWCDADDERHourSmallGroup: TSmallintField
      FieldName = 'HourSmallGroup'
    end
    object ADODSWCDADDERHourIndividual: TSmallintField
      FieldName = 'HourIndividual'
    end
    object ADODSWCDADDERHourSelfWork: TSmallintField
      FieldName = 'HourSelfWork'
    end
    object ADODSWCDADDERControlTest: TBooleanField
      FieldName = 'ControlTest'
    end
    object ADODSWCDADDERControlExamination: TBooleanField
      FieldName = 'ControlExamination'
    end
    object ADODSWCDADDERControlCourseWork: TBooleanField
      FieldName = 'ControlCourseWork'
    end
  end
  object DSWCDADDER: TDataSource
    DataSet = ADODSWCDADDER
    Left = 320
    Top = 360
  end
  object DSUpdSessionOld: TDataSource
    DataSet = ADODUpdSessionOld
    Left = 432
    Top = 360
  end
  object ADODUpdSessionOld: TADODataSet
    Connection = ADOCDecanat
    CommandText = 'usp_UpdateStudentExamination;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@idGroup'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 528
    Top = 360
  end
  object ADOCUpdateStudentExam: TADOCommand
    CommandText = 'usp_UpdateStudentExamChangeOverWCD;1'
    CommandType = cmdStoredProc
    Connection = ADOCDecanat
    Prepared = True
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@id'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idwcd'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 80
    Top = 320
  end
  object ADODSStudentOrder: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    Filtered = True
    CommandText = 
      'select '#13#10'ID,Confirme,'#13#10' OrderNumber,'#13#10' OrderDate, '#13#10'DateFrom,'#13#10' ' +
      'DateTo,'#13#10'case'#13#10'    when so.idOrderType=0 then '#39#1054#1090#1095#1080#1089#1083#1077#1085#1080#1077#39#13#10'    ' +
      'when so.idOrderType=1 then '#39#1055#1077#1088#1077#1074#1086#1076#1077' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1082#1091#1088#1089#39#13#10'else '#39#39 +
      ' end as Type,'#13#10'case'#13#10'   when so. Reason=0 then '#39#1055#1088#1080#1095#1080#1085#1072'1'#39#13#10'    w' +
      'hen so.Reason=1 then '#39#1055#1088#1080#1095#1080#1085#1072'2'#39#13#10'else '#39#39' end as Reason'#13#10#13#10' from ' +
      'StudentOrder so'#13#10'where Confirme=0'
    Parameters = <>
    Left = 339
    Top = 288
    object ADODSStudentOrderID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADODSStudentOrderOrderNumber: TWideStringField
      FieldName = 'OrderNumber'
      Size = 50
    end
    object ADODSStudentOrderOrderDate: TDateTimeField
      FieldName = 'OrderDate'
    end
    object ADODSStudentOrderDateFrom: TDateTimeField
      FieldName = 'DateFrom'
    end
    object ADODSStudentOrderDateTo: TDateTimeField
      FieldName = 'DateTo'
    end
    object ADODSStudentOrderType: TStringField
      FieldName = 'Type'
      ReadOnly = True
      Size = 26
    end
    object ADODSStudentOrderReason: TStringField
      FieldName = 'Reason'
      ReadOnly = True
      Size = 26
    end
    object ADODSStudentOrderConfirme: TBooleanField
      FieldName = 'Confirme'
    end
  end
  object DsStudentorder: TDataSource
    DataSet = ADODSStudentOrder
    Left = 648
    Top = 336
  end
  object ADODSReason: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1055#1088#1080#1095#1080#1085#1072'1'#39' as reason'#13#10'union all'#13#10'select 1, '#39#1055#1088#1080#1095 +
      #1080#1085#1072'2'#39#13#10#13#10
    Parameters = <>
    Left = 512
    Top = 680
  end
  object DSReason: TDataSource
    DataSet = ADODSReason
    Left = 512
    Top = 736
  end
  object ADODSTypeOrder: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1054#1090#1095#1080#1089#1083#1077#1085#1080#1077#39' as typeorder'#13#10'union all'#13#10'select 1, ' +
      #39#1055#1077#1088#1077#1074#1086#1076#1077' '#1085#1072' '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1082#1091#1088#1089#39#13#10
    Parameters = <>
    Left = 608
    Top = 680
  end
  object DSTypeOrder: TDataSource
    DataSet = ADODSTypeOrder
    Left = 608
    Top = 736
  end
  object ADOCommand1: TADOCommand
    CommandText = 
      'INSERT INTO StudentOrder (OrderType, OrderNumber, OrderDate, Dat' +
      'eFrom, DateTo, Reason,confirme) '#13#10'values (:OrderType,:OrderNumbe' +
      'r,:OrderDate, :DateFrom,:DateTo,:Reason,:confirme)'#13#10#13#10' '#13#10' '
    Connection = ADOCDecanat
    Parameters = <
      item
        Name = 'OrderType'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'OrderNumber'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'OrderDate'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'DateFrom'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'DateTo'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Reason'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'confirme'
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 760
    Top = 288
  end
  object ADOCommand2: TADOCommand
    CommandText = 
      'INSERT INTO StudentPrikaz (idStudentOrder, StudentId) '#13#10'values (' +
      ':Prikaz,:student)'#13#10' '
    Connection = ADOCDecanat
    Prepared = True
    Parameters = <
      item
        Name = 'Prikaz'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'student'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 752
    Top = 344
  end
  object ADODSStudentPrikaz: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select idStudentOrder, StudentId  from StudentPrikaz'#13#10'where idSt' +
      'udentOrder=:id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 456
    Top = 232
    object ADODSStudentPrikazidStudentOrder: TIntegerField
      FieldName = 'idStudentOrder'
    end
    object ADODSStudentPrikazStudentId: TIntegerField
      FieldName = 'StudentId'
    end
  end
  object DSADODSStudentPrikaz: TDataSource
    DataSet = ADODSStudentPrikaz
    Left = 456
    Top = 280
  end
  object ADOCPerevod: TADOCommand
    CommandText = 
      'update [group] set kurs=kurs+1 '#13#10'where id in(select distinct idg' +
      'roup from studentdata s join studentprikaz sp on s. id=sp.Studen' +
      'tId where sp. idStudentOrder=:Prik)'
    Connection = ADOCDecanat
    Prepared = True
    Parameters = <
      item
        Name = 'Prik'
        Size = -1
        Value = Null
      end>
    Left = 72
    Top = 264
  end
  object DSResult: TDataSource
    DataSet = ADODSResult
    Left = 744
    Top = 736
  end
  object ADODSResult: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1053#1077#1091#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#39' as res'#13#10'union all'#13#10'select ' +
      '1, '#39#1059#1076#1086#1074#1083#1077#1090#1074#1086#1088#1080#1090#1077#1083#1100#1085#1086#39#13#10'union all'#13#10'select 2, '#39#1061#1086#1088#1086#1096#1086#39#13#10'union all' +
      #13#10'select 3, '#39#1054#1090#1083#1080#1095#1085#1086#39#13#10#13#10
    Parameters = <>
    Left = 744
    Top = 688
    object ADODSResultid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSResultres: TStringField
      FieldName = 'res'
      ReadOnly = True
      Size = 19
    end
  end
  object DSkol: TDataSource
    DataSet = ADODSkol
    Left = 840
    Top = 736
  end
  object ADODSkol: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 1 as kol, 1 as kol'#13#10'union all'#13#10'select 2 as kol, 2 as kol'#13 +
      #10'union all'#13#10'select 3 as kol, 3 as kol'#13#10
    Parameters = <>
    Left = 840
    Top = 688
  end
  object ADODSSearch: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'usp_SearchStudent;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@status'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@kursLow'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@kursHigh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@nameF'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@nameI'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@nameO'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@GroupName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@FacultyIDlow'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FacultyIDHigh'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@BirthPlace'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 300
        Value = Null
      end
      item
        Name = '@PassportSeries'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@PassportNumber'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@Registration'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 300
        Value = Null
      end
      item
        Name = '@PhoneNumber'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@RecordBookNumber'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@AgreementNumber'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end>
    Prepared = True
    Left = 264
    Top = 704
    object ADODSSearchNameF: TWideStringField
      FieldName = 'NameF'
      Size = 50
    end
    object ADODSSearchNameI: TWideStringField
      FieldName = 'NameI'
      Size = 50
    end
    object ADODSSearchNameO: TWideStringField
      FieldName = 'NameO'
      Size = 50
    end
    object ADODSSearchBirthPlace: TWideStringField
      FieldName = 'BirthPlace'
      Size = 300
    end
    object ADODSSearchPassportSeries: TWideStringField
      FieldName = 'PassportSeries'
      Size = 50
    end
    object ADODSSearchPassportNumber: TWideStringField
      FieldName = 'PassportNumber'
      Size = 50
    end
    object ADODSSearchRegistration: TWideStringField
      FieldName = 'Registration'
      Size = 300
    end
    object ADODSSearchPhoneNumber: TWideStringField
      FieldName = 'PhoneNumber'
      Size = 50
    end
    object ADODSSearchRecordBookNumber: TWideStringField
      FieldName = 'RecordBookNumber'
      Size = 50
    end
    object ADODSSearchkurs: TWordField
      FieldName = 'kurs'
    end
    object ADODSSearchidplan: TIntegerField
      FieldName = 'idplan'
    end
    object ADODSSearchGroupName: TWideStringField
      FieldName = 'GroupName'
      Size = 50
    end
    object ADODSSearchID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADODSSearchFacultyName: TWideStringField
      FieldName = 'FacultyName'
      Size = 50
    end
    object ADODSSearchAgreementNumber: TWideStringField
      FieldName = 'AgreementNumber'
      Size = 50
    end
    object ADODSSearchidstud: TAutoIncField
      FieldName = 'idstud'
      ReadOnly = True
    end
    object ADODSSearchStatus: TWordField
      FieldName = 'Status'
    end
  end
  object DSSearch: TDataSource
    DataSet = ADODSSearch
    Left = 264
    Top = 760
  end
  object ADODSCity: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select id,  Name from Citizenship'#13#10
    Parameters = <>
    Left = 384
    Top = 128
  end
  object DSCity: TDataSource
    DataSet = ADODSCity
    Left = 384
    Top = 184
  end
  object DSNumberGroup: TDataSource
    DataSet = ADODNumberGroup
    Left = 384
    Top = 728
  end
  object ADODNumberGroup: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 1 as id, '#39'1'#39' as NumberGroup'#13#10'union all'#13#10'select 2, '#39'2'#39#13#10'un' +
      'ion all'#13#10'select 3, '#39'3'#39#13#10#13#10
    Parameters = <>
    Left = 376
    Top = 680
  end
  object ADODSDateSession: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select id, idGroup, Semestr, ldate, hdate'#13#10' from DateSession'
    Parameters = <>
    Prepared = True
    Left = 40
    Top = 672
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'GroupName'
      Size = 255
    end
  end
  object DSDatesession: TDataSource
    DataSet = ADODSDateSession
    Left = 40
    Top = 720
  end
  object ADOCLogWorKCurDisc: TADOCommand
    CommandText = 'usp_LogWorkCurriculumDiscipline;1'
    CommandType = cmdStoredProc
    Connection = ADOCDecanat
    Prepared = True
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@iduser'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Semester'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@idSubject'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@HourLecture'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@HourSeminar'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@HourPractice'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@HourSmallGroup'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@HourIndividual'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@HourSelfWork'
        Attributes = [paNullable]
        DataType = ftSmallint
        Precision = 5
        Value = Null
      end
      item
        Name = '@ControlTest'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@ControlExamination'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@ControlCourseWork'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateChange'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@Mode'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@idWorkCurriculumDiscipline'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idWorkCurriculum'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 936
    Top = 688
  end
  object ADODSOldNames: TADODataSet
    Connection = ADOCDecanat
    CommandText = 'usp_OldName;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@OldName'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = '0'
      end
      item
        Name = '@DateOfChange'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@NameF'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@NameI'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@NameO'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@Reason'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 1
        Value = Null
      end
      item
        Name = '@idStudent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdUser'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 968
    Top = 432
  end
  object DSOldNames: TDataSource
    DataSet = ADODSOldNames
    Left = 968
    Top = 488
  end
  object ADODSOldNamestory: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select Reason, NameF, NameI, NameO, DateOfChange, OldName'#13#10' from' +
      ' OldNames'#13#10'where idstudent=:id'#13#10'order by  DateOfChange'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 1040
    Top = 432
    object ADODSOldNamestoryReason: TWideMemoField
      FieldName = 'Reason'
      BlobType = ftWideMemo
    end
    object ADODSOldNamestoryNameF: TBooleanField
      FieldName = 'NameF'
    end
    object ADODSOldNamestoryNameI: TBooleanField
      FieldName = 'NameI'
    end
    object ADODSOldNamestoryNameO: TBooleanField
      FieldName = 'NameO'
    end
    object ADODSOldNamestoryDateOfChange: TDateTimeField
      FieldName = 'DateOfChange'
    end
    object ADODSOldNamestoryOldName: TWideStringField
      FieldName = 'OldName'
      Size = 50
    end
  end
  object DSOldNamestory: TDataSource
    DataSet = ADODSOldNamestory
    Left = 1040
    Top = 488
  end
  object ADODSSessionDate: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select Semester, DateStart, DateFinish'#13#10' from SessionDates'#13#10'wher' +
      'e IDGroup=:id'#13#10'order by Semester'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 952
    Top = 280
    object ADODSSessionDateSemester: TIntegerField
      FieldName = 'Semester'
    end
    object ADODSSessionDateDateStart: TDateTimeField
      FieldName = 'DateStart'
      EditMask = '00/00/00;1;_'
    end
    object ADODSSessionDateDateFinish: TDateTimeField
      FieldName = 'DateFinish'
      EditMask = '00/00/00;1;_'
    end
  end
  object DSSessionDate: TDataSource
    DataSet = ADODSSessionDate
    Left = 952
    Top = 336
  end
  object ADOCLogStudExam: TADOCommand
    CommandText = 'usp_LogStudentExamination;1'
    CommandType = cmdStoredProc
    Connection = ADOCDecanat
    Prepared = True
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Userid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@IsCalculated'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = Null
      end
      item
        Name = '@DateChan'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@idSubject'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@result'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@ControlForm'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@idStudent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@idWorkCurriculumDiscipline'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@Semester'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 936
    Top = 744
  end
  object g: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      #13#10'select ID, kurs, IDFaculty, [Status], GroupName, DateOfExpiry,' +
      ' idPlan'#13#10'from'#13#10'('#13#10'SELECT row_number() over(order by g.kurs, g.ID' +
      ', GroupName) as rn, g.ID, g.kurs, g.IDFaculty, g.[Status], coale' +
      'sce(gn.GroupName, '#39#1041#1077#1079#1099#1084#1103#1085#1085#1072#1103#39') as GroupName, g.DateOfExpiry, g.' +
      'idPlan'#13#10'FROM [Group] g'#13#10'left JOIN [WorkCurriculum] wc on g.id=wc' +
      '.idGroup'#13#10'left JOIN [GroupNameByPlanNumber] gn on (wc.idPlan=gn.' +
      'idPlan) and (g.kurs=gn.kurs) and (g.NumberGroup=gn.NumberGroup)'#13 +
      #10'left join StudentData sd on g.id=sd.idGroup'#13#10'WHERE g.[status]=3' +
      '-- and g.idplan=75'#13#10'group by g.id, gn.groupName, g.kurs, g.idFac' +
      'ulty, g.status, g.DateOfExpiry, g.idPlan'#13#10')g'#13#10'where idPlan<>75'
    Parameters = <>
    Prepared = True
    Left = 1048
    Top = 720
    object gID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object gkurs: TWordField
      FieldName = 'kurs'
    end
    object gIDFaculty: TIntegerField
      FieldName = 'IDFaculty'
    end
    object gStatus: TWordField
      FieldName = 'Status'
    end
    object gGroupName: TWideStringField
      FieldName = 'GroupName'
      ReadOnly = True
      Size = 50
    end
    object gDateOfExpiry: TDateTimeField
      FieldName = 'DateOfExpiry'
    end
    object gidPlan: TIntegerField
      FieldName = 'idPlan'
    end
  end
  object Dg: TDataSource
    DataSet = g
    Left = 1048
    Top = 768
  end
  object ADODSGroupa: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select  isnull (gn.GroupName ,'#39#1041#1077#1079#1099#1084#1103#1085#1085#1072#1103#39') as GroupName  , g.ID' +
      #13#10'from [group] g'#13#10'left join WorkCurriculum w on w.idGroup=g.id'#13#10 +
      'left join GroupNameByPlanNumber gn on (w.idPlan=gn.idPlan)  and ' +
      '(gn.kurs=g.kurs) and (g.numbergroup=gn.numbergroup)'#13#10'where (gn.k' +
      'urs=:kurs) and (g.idFaculty=:fac) and (g.[status]=0)'
    Parameters = <
      item
        Name = 'kurs'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end
      item
        Name = 'fac'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 904
    Top = 16
    object ADODSGroupaGroupName: TWideStringField
      FieldName = 'GroupName'
      Size = 50
    end
    object ADODSGroupaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
  end
  object DSGroupa: TDataSource
    DataSet = ADODSGroupa
    Left = 912
    Top = 64
  end
  object ADOCMarks: TADOCommand
    CommandText = 'usp_Mark;1'
    CommandType = cmdStoredProc
    Connection = ADOCDecanat
    Prepared = True
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@IdStudent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 936
    Top = 632
  end
  object qq: TDataSource
    DataSet = q
    Left = 888
    Top = 576
  end
  object q: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select *'#13#10#13#10#13#10'FROM StudentData'#13#10'order by id'
    Parameters = <>
    Prepared = True
    Left = 888
    Top = 528
    object qID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qIDinOldDecanat: TIntegerField
      FieldName = 'IDinOldDecanat'
    end
    object qIDuPlanInOldDecanat: TIntegerField
      FieldName = 'IDuPlanInOldDecanat'
    end
    object qIDgroupInOldDecanat: TIntegerField
      FieldName = 'IDgroupInOldDecanat'
    end
    object qIDGroup: TIntegerField
      FieldName = 'IDGroup'
    end
    object qNameF: TWideStringField
      FieldName = 'NameF'
      Size = 50
    end
    object qNameI: TWideStringField
      FieldName = 'NameI'
      Size = 50
    end
    object qNameO: TWideStringField
      FieldName = 'NameO'
      Size = 50
    end
    object qNameS: TWideStringField
      FieldName = 'NameS'
      ReadOnly = True
      Size = 56
    end
    object qPhoto: TBlobField
      FieldName = 'Photo'
    end
    object qYearOfLeave: TWideStringField
      FieldName = 'YearOfLeave'
      Size = 50
    end
    object qsex: TBooleanField
      FieldName = 'sex'
    end
    object qFamilyHasSpouse: TBooleanField
      FieldName = 'FamilyHasSpouse'
    end
    object qFamilyHasChild: TBooleanField
      FieldName = 'FamilyHasChild'
    end
    object qFamilyChildCount: TWordField
      FieldName = 'FamilyChildCount'
    end
    object qBirthDate: TDateTimeField
      FieldName = 'BirthDate'
    end
    object qBirthPlace: TWideStringField
      FieldName = 'BirthPlace'
      Size = 300
    end
    object qEducationLevel: TWordField
      FieldName = 'EducationLevel'
    end
    object qEducationNight: TBooleanField
      FieldName = 'EducationNight'
    end
    object qEducationInstitution: TWideStringField
      FieldName = 'EducationInstitution'
      Size = 300
    end
    object qEducationEndYear: TWideStringField
      FieldName = 'EducationEndYear'
      Size = 50
    end
    object qJob: TBooleanField
      FieldName = 'Job'
    end
    object qJobStage: TWideStringField
      FieldName = 'JobStage'
      Size = 50
    end
    object qJobOrganization: TWideStringField
      FieldName = 'JobOrganization'
      Size = 300
    end
    object qJobProfession: TWideStringField
      FieldName = 'JobProfession'
      Size = 300
    end
    object qForeignLanguage: TIntegerField
      FieldName = 'ForeignLanguage'
    end
    object qPassportSeries: TWideStringField
      FieldName = 'PassportSeries'
      Size = 50
    end
    object qPassportNumber: TWideStringField
      FieldName = 'PassportNumber'
      Size = 50
    end
    object qPassportIssueWho: TWideStringField
      FieldName = 'PassportIssueWho'
      Size = 300
    end
    object qPassportIssueDate: TDateTimeField
      FieldName = 'PassportIssueDate'
    end
    object qCitizenship: TIntegerField
      FieldName = 'Citizenship'
    end
    object qRegion: TWideStringField
      FieldName = 'Region'
      Size = 300
    end
    object qRegistration: TWideStringField
      FieldName = 'Registration'
      Size = 300
    end
    object qAdrProg: TWideStringField
      FieldName = 'AdrProg'
      Size = 300
    end
    object qAdrProgP: TBooleanField
      FieldName = 'AdrProgP'
    end
    object qPhoneNumber: TWideStringField
      FieldName = 'PhoneNumber'
      Size = 50
    end
    object qFatherNameF: TWideStringField
      FieldName = 'FatherNameF'
      Size = 50
    end
    object qFatherNameN: TWideStringField
      FieldName = 'FatherNameN'
      Size = 50
    end
    object qFatherNameO: TWideStringField
      FieldName = 'FatherNameO'
      Size = 50
    end
    object qFatherJobOrganization: TWideStringField
      FieldName = 'FatherJobOrganization'
      Size = 300
    end
    object qFatherJobProfession: TWideStringField
      FieldName = 'FatherJobProfession'
      Size = 50
    end
    object qFatherRegistrationEqualActual: TBooleanField
      FieldName = 'FatherRegistrationEqualActual'
    end
    object qFatherRegistrationAddress: TWideStringField
      FieldName = 'FatherRegistrationAddress'
      Size = 300
    end
    object qFatherActualAddress: TWideStringField
      FieldName = 'FatherActualAddress'
      Size = 300
    end
    object qFatherPhoneNumber: TWideStringField
      FieldName = 'FatherPhoneNumber'
      Size = 50
    end
    object qMotherNameF: TWideStringField
      FieldName = 'MotherNameF'
      Size = 50
    end
    object qMotherNameN: TWideStringField
      FieldName = 'MotherNameN'
      Size = 50
    end
    object qMotherNameO: TWideStringField
      FieldName = 'MotherNameO'
      Size = 50
    end
    object qMotherJobOrganization: TWideStringField
      FieldName = 'MotherJobOrganization'
      Size = 300
    end
    object qMotherJobProfession: TWideStringField
      FieldName = 'MotherJobProfession'
      Size = 50
    end
    object qMotherRegistrationEqualActual: TBooleanField
      FieldName = 'MotherRegistrationEqualActual'
    end
    object qMotherActualAddress: TWideStringField
      FieldName = 'MotherActualAddress'
      Size = 300
    end
    object qMotherRegistrationAddress: TWideStringField
      FieldName = 'MotherRegistrationAddress'
      Size = 300
    end
    object qMotherPhoneNumberl: TWideStringField
      FieldName = 'MotherPhoneNumberl'
      Size = 50
    end
    object qRecordBookNumber: TWideStringField
      FieldName = 'RecordBookNumber'
      Size = 50
    end
    object qEducationConditions: TWordField
      FieldName = 'EducationConditions'
    end
    object qAgreementNumber: TWideStringField
      FieldName = 'AgreementNumber'
      Size = 50
    end
    object qAgreementDate: TDateTimeField
      FieldName = 'AgreementDate'
    end
    object qAcceptedAsStudent: TBooleanField
      FieldName = 'AcceptedAsStudent'
    end
    object qAcceptedYear: TWideStringField
      FieldName = 'AcceptedYear'
      Size = 50
    end
    object qAcceptedFrom: TWideStringField
      FieldName = 'AcceptedFrom'
      Size = 300
    end
    object qAcceptedOrderNumber: TWideStringField
      FieldName = 'AcceptedOrderNumber'
      Size = 50
    end
    object qAcceptedDate: TDateTimeField
      FieldName = 'AcceptedDate'
    end
    object qStipend: TIntegerField
      FieldName = 'Stipend'
    end
    object qBenefitDocument: TWideStringField
      FieldName = 'BenefitDocument'
      Size = 300
    end
    object qBenefit: TIntegerField
      FieldName = 'Benefit'
    end
    object qStatus: TWordField
      FieldName = 'Status'
    end
    object qOrderFirstKurs: TWideStringField
      FieldName = 'OrderFirstKurs'
      Size = 50
    end
    object qDateFirstKursOrder: TDateTimeField
      FieldName = 'DateFirstKursOrder'
    end
    object qOrderSecondKurs: TWideStringField
      FieldName = 'OrderSecondKurs'
      Size = 50
    end
    object qDateSecondKursOrder: TDateTimeField
      FieldName = 'DateSecondKursOrder'
    end
    object qOrderThirdKurs: TWideStringField
      FieldName = 'OrderThirdKurs'
      Size = 50
    end
    object qDateThirdKursOrder: TDateTimeField
      FieldName = 'DateThirdKursOrder'
    end
    object qOrderFourthKurs: TWideStringField
      FieldName = 'OrderFourthKurs'
      Size = 50
    end
    object qDateFourthKursOrder: TDateTimeField
      FieldName = 'DateFourthKursOrder'
    end
    object qOrderFifthKurs: TWideStringField
      FieldName = 'OrderFifthKurs'
      Size = 50
    end
    object qDateFifthKursOrder: TDateTimeField
      FieldName = 'DateFifthKursOrder'
    end
    object qMarks: TIntegerField
      FieldName = 'Marks'
    end
    object qextensionSemester1: TBooleanField
      FieldName = 'extensionSemester1'
    end
    object qextensionSemester2: TBooleanField
      FieldName = 'extensionSemester2'
    end
    object qextensionSemester1date: TDateTimeField
      FieldName = 'extensionSemester1date'
    end
    object qextensionSemester2date: TDateTimeField
      FieldName = 'extensionSemester2date'
    end
    object qigaExamCount: TSmallintField
      FieldName = 'igaExamCount'
    end
    object qigaExam1Name: TWideStringField
      FieldName = 'igaExam1Name'
      Size = 500
    end
    object qigaExam1Result: TSmallintField
      FieldName = 'igaExam1Result'
    end
    object qigaExam2Name: TWideStringField
      FieldName = 'igaExam2Name'
      Size = 500
    end
    object qigaExam2Result: TSmallintField
      FieldName = 'igaExam2Result'
    end
    object qigaExam3Name: TWideStringField
      FieldName = 'igaExam3Name'
      Size = 500
    end
    object qigaExam3Result: TSmallintField
      FieldName = 'igaExam3Result'
    end
    object qigaDefenceCount: TSmallintField
      FieldName = 'igaDefenceCount'
    end
    object qigaDefence1Name: TStringField
      FieldName = 'igaDefence1Name'
      Size = 500
    end
    object qigaDefence1Result: TSmallintField
      FieldName = 'igaDefence1Result'
    end
    object qigaDefence2Name: TWideStringField
      FieldName = 'igaDefence2Name'
      Size = 500
    end
    object qigaDefence2Result: TSmallintField
      FieldName = 'igaDefence2Result'
    end
    object qigaDefence3Name: TWideStringField
      FieldName = 'igaDefence3Name'
      Size = 500
    end
    object qigaDefence3Result: TSmallintField
      FieldName = 'igaDefence3Result'
    end
    object qigaProtocolNumber: TStringField
      FieldName = 'igaProtocolNumber'
      Size = 500
    end
    object qigaProtocolDate: TDateTimeField
      FieldName = 'igaProtocolDate'
    end
    object qigaSpeciality: TIntegerField
      FieldName = 'igaSpeciality'
    end
    object qworkBeforeVuzName: TWideStringField
      FieldName = 'workBeforeVuzName'
      Size = 50
    end
    object qworkBeforeVuzAddress: TWideStringField
      FieldName = 'workBeforeVuzAddress'
      Size = 50
    end
    object qworkBeforeVuzPost: TWideStringField
      FieldName = 'workBeforeVuzPost'
      Size = 50
    end
    object qworkBeforeVuzExperience: TWideStringField
      FieldName = 'workBeforeVuzExperience'
      Size = 50
    end
    object qworkDuringVuzName: TWideStringField
      FieldName = 'workDuringVuzName'
      Size = 50
    end
    object qworkDuringVuzAddress: TWideStringField
      FieldName = 'workDuringVuzAddress'
      Size = 50
    end
    object qworkDuringVuzPost: TWideStringField
      FieldName = 'workDuringVuzPost'
      Size = 50
    end
    object qworkDuringVuzDateIn: TDateTimeField
      FieldName = 'workDuringVuzDateIn'
    end
    object qworkDuringVuzDateOut: TDateTimeField
      FieldName = 'workDuringVuzDateOut'
    end
    object qworkDuringVuzOfficial: TBooleanField
      FieldName = 'workDuringVuzOfficial'
    end
    object qworkAchievement: TWideMemoField
      FieldName = 'workAchievement'
      BlobType = ftWideMemo
    end
    object qworkAfterVuzName: TWideStringField
      FieldName = 'workAfterVuzName'
      Size = 50
    end
    object qworkAfterVuzAddress: TWideStringField
      FieldName = 'workAfterVuzAddress'
      Size = 50
    end
    object qworkAfterVuzPost: TWideStringField
      FieldName = 'workAfterVuzPost'
      Size = 50
    end
    object qworkAfterVuzProfile: TBooleanField
      FieldName = 'workAfterVuzProfile'
    end
    object qworkAfterVuzOfficial: TBooleanField
      FieldName = 'workAfterVuzOfficial'
    end
    object qworkAfterVuzDocument: TIntegerField
      FieldName = 'workAfterVuzDocument'
    end
    object qDateOfExpiry: TDateTimeField
      FieldName = 'DateOfExpiry'
    end
    object qBarCodeLibraryCardWithoutCheckSum: TLargeintField
      FieldName = 'BarCodeLibraryCardWithoutCheckSum'
      ReadOnly = True
    end
    object qBarCodeLibraryCard: TLargeintField
      FieldName = 'BarCodeLibraryCard'
    end
  end
  object DSMarks: TDataSource
    DataSet = ADODMarks
    Left = 920
    Top = 824
  end
  object ADODMarks: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'usp_Mark;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@IdStudent'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Prepared = True
    Left = 920
    Top = 872
  end
  object ADODSLineCom: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select -1 as id, '#39#1042#1089#1077#39' as type'#13#10'union all '#13#10'select 0, '#39#1052#1077#1078#1075#1086#1089#1091#1076#1072 +
      #1088#1089#1090#1074#1077#1085#1085#1099#1077' '#1089#1086#1075#1083#1072#1096#1077#1085#1080#1103#39#13#10'union all'#13#10'select 1, '#39#1054#1073#1097#1080#1077' '#1086#1089#1085#1086#1074#1072#1085#1080#1103#39#13#10
    Parameters = <>
    Left = 40
    Top = 816
    object ADODSLineComid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSLineComtype: TStringField
      FieldName = 'type'
      ReadOnly = True
      Size = 29
    end
  end
  object DSLineCom: TDataSource
    DataSet = ADODSLineCom
    Left = 40
    Top = 872
  end
  object DSForieng: TDataSource
    DataSet = ADODSForieng
    Left = 120
    Top = 872
  end
  object ADODSForieng: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select  id, idStudent, CodePribytie, CodeSocialOrigin, '#13#10'YearOfE' +
      'nd, DateRegistrationBegin, DateRegistrationEnd, '#13#10'DateArrivalInR' +
      'ussia'#13#10' from Foreingners'#13#10'where  idStudent=:id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 120
    Top = 816
  end
  object ADODSCodSocial: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select null as id, null as type'#13#10'union all'#13#10'select 0, '#39#1080#1079' '#1089#1083#1091#1078#1072#1097 +
      #1080#1093#39#13#10'union all'#13#10'select 1, '#39#1080#1079' '#1088#1072#1073#1086#1095#1080#1093#39#13#10'union all'#13#10'select 2, '#39#1085#1077 +
      ' '#1091#1082#1072#1079#1072#1085#1086#39
    Parameters = <>
    Left = 200
    Top = 816
    object ADODSCodSocialid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSCodSocialtype: TStringField
      FieldName = 'type'
      ReadOnly = True
      Size = 11
    end
  end
  object DSCodSocial: TDataSource
    DataSet = ADODSCodSocial
    Left = 200
    Top = 872
  end
  object adodsForeignerDataAdd: TADODataSet
    Connection = ADOCDecanat
    CommandText = 
      'INSERT INTO Foreingners (idStudent, CodePribytie, CodeSocialOrig' +
      'in, DateRegistrationBegin, DateRegistrationEnd, DateArrivalInRus' +
      'sia)'#13#10'output inserted.id'#13#10'values(:IDStudent, :CodePribytie, :Cod' +
      'eSocialOrigin, :DateRegistrationBegin, :DateRegistrationEnd, :Da' +
      'teArrivalInRussia)'
    Parameters = <
      item
        Name = 'IDStudent'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CodePribytie'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'CodeSocialOrigin'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'DateRegistrationBegin'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'DateRegistrationEnd'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'DateArrivalInRussia'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Prepared = True
    Left = 288
    Top = 816
  end
  object DSForeignerDataAdd: TDataSource
    DataSet = adodsForeignerDataAdd
    Left = 288
    Top = 872
  end
  object ADODSPrikaz: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select id, id_stud, Prikaz, Nomer, Ot, S, Po, Prichina, UserId'#13#10 +
      ' from Prikaz'#13#10'where id_stud=:id'#13#10
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 408
    Top = 816
    object ADODSPrikazid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSPrikazid_stud: TIntegerField
      FieldName = 'id_stud'
    end
    object ADODSPrikazPrikaz: TWideStringField
      FieldName = 'Prikaz'
      FixedChar = True
      Size = 50
    end
    object ADODSPrikazNomer: TWideStringField
      FieldName = 'Nomer'
      FixedChar = True
      Size = 50
    end
    object ADODSPrikazOt: TDateTimeField
      FieldName = 'Ot'
    end
    object ADODSPrikazS: TDateTimeField
      FieldName = 'S'
    end
    object ADODSPrikazPo: TDateTimeField
      FieldName = 'Po'
    end
    object ADODSPrikazPrichina: TWideStringField
      FieldName = 'Prichina'
      FixedChar = True
      Size = 100
    end
    object ADODSPrikazUserId: TIntegerField
      FieldName = 'UserId'
    end
  end
  object DSPrikaz: TDataSource
    DataSet = ADODSPrikaz
    Left = 408
    Top = 872
  end
  object ADODSPrikazAdd: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'insert into Prikaz(id_stud, Prikaz, Nomer, Ot, S, Po, Prichina,U' +
      'serId)'#13#10'output inserted.id'#13#10'values (:id_stud,:Prikaz, :Nomer, :O' +
      't, :S, :Po, :Prichina, :UserId)'
    Parameters = <
      item
        Name = 'id_stud'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Prikaz'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Nomer'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Ot'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'S'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Po'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Prichina'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = Null
      end
      item
        Name = 'UserId'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 488
    Top = 816
  end
  object DSPrikazAdd: TDataSource
    DataSet = ADODSPrikazAdd
    Left = 488
    Top = 872
  end
  object ADODSSpec: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select '#39'%'#39' as id, '#39#1042#1089#1077#39' as Speciality'#13#10'union all '#13#10'select  disti' +
      'nct(Speciality),Speciality'#13#10'from WorkCurriculum'#13#10'where Specialit' +
      'y<>'#39#39#13#10
    Parameters = <>
    Prepared = True
    Left = 576
    Top = 816
  end
  object DSSpec: TDataSource
    DataSet = ADODSSpec
    Left = 576
    Top = 872
  end
  object ADODSCityRep: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 0 as id, '#39#1042#1089#1077#39' as Name'#13#10'union all '#13#10'select id,  Name'#13#10' fr' +
      'om Citizenship'#13#10'where name<>'#39#1056#1086#1089#1089#1080#1103#39
    Parameters = <>
    Prepared = True
    Left = 656
    Top = 968
  end
  object DSEducCon: TDataSource
    DataSet = ADODSEducCon
    Left = 736
    Top = 864
  end
  object ADODSEducCon: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      #13#10'select -1 as id, '#39#1042#1089#1077#39' as condition'#13#10'union all'#13#10'select 0 as id' +
      ', '#39#1041#1102#1076#1078#1077#1090#39' as condition'#13#10'union all'#13#10'select 1, '#39#1062#1077#1083#1077#1074#1086#1077#39#13#10'union a' +
      'll'#13#10'select 2, '#39#1050#1086#1084#1084#1077#1088#1094#1080#1103#39#13#10
    Parameters = <>
    Prepared = True
    Left = 736
    Top = 816
  end
  object DSCityRep: TDataSource
    DataSet = ADODSCityRep
    Left = 656
    Top = 872
  end
  object ADODSLogButtonPlan: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'insert  into LogSpr ([User], date, Count, idPlan, idGroup, resul' +
      't, workcurriculum)'#13#10'output  inserted.id'#13#10'values (:User, :date, :' +
      'Count, :idPlan, :idGroup, :result, :wc)'#13#10
    Parameters = <
      item
        Name = 'User'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'date'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'Count'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'idPlan'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'idGroup'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'result'
        Attributes = [paNullable]
        DataType = ftBoolean
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'wc'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 40
    Top = 936
  end
  object DSLogButtonPlan: TDataSource
    Left = 40
    Top = 992
  end
  object ADODSLog: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'insert  into Log (ip, iduser, cmpname, usernamecmp, Dateon, OnOf' +
      'f)'#13#10'output  inserted.id'#13#10'values (:ip,:iduser,:cmpname,:usernamec' +
      'mp,:Dateon, 0)'#13#10#13#10
    Parameters = <
      item
        Name = 'ip'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'iduser'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'cmpname'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'usernamecmp'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Dateon'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    Prepared = True
    Left = 1000
    Top = 16
  end
  object DSLog: TDataSource
    DataSet = ADODSLog
    Left = 992
    Top = 64
  end
  object ADODSLogOFF: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'update Log set  Dateof=:dt,OnOff=1'#13#10' where ( (iduser=:iduser) an' +
      'd (Dateof is null))'#13#10'select 1'#13#10
    Parameters = <
      item
        Name = 'dt'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'iduser'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 1064
    Top = 16
  end
  object DSLogOFF: TDataSource
    DataSet = ADODSLogOFF
    Left = 1064
    Top = 64
  end
  object ADODSCloseProg: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select * '#13#10'from log'#13#10'where (iduser=:id) and ( Dateof is null)'#13#10#13 +
      #10
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 920
    Top = 120
    object ADODSCloseProgid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSCloseProgip: TStringField
      FieldName = 'ip'
      Size = 50
    end
    object ADODSCloseProgiduser: TIntegerField
      FieldName = 'iduser'
    end
    object ADODSCloseProgcmpname: TStringField
      FieldName = 'cmpname'
      Size = 50
    end
    object ADODSCloseProgusernamecmp: TStringField
      FieldName = 'usernamecmp'
      Size = 50
    end
    object ADODSCloseProgDateon: TDateTimeField
      FieldName = 'Dateon'
    end
    object ADODSCloseProgDateof: TDateTimeField
      FieldName = 'Dateof'
    end
    object ADODSCloseProgOnOff: TIntegerField
      FieldName = 'OnOff'
    end
  end
  object DSCloseProg: TDataSource
    DataSet = ADODSCloseProg
    Left = 920
    Top = 168
  end
  object ADODSVersion: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select Version'#13#10'from Version'#13#10#13#10#13#10
    Parameters = <>
    Prepared = True
    Left = 1000
    Top = 120
    object ADODSVersionVersion: TIntegerField
      FieldName = 'Version'
    end
  end
  object DSVersion: TDataSource
    DataSet = ADODSVersion
    Left = 1000
    Top = 168
  end
  object dsWorkCurrDisc: TDataSource
    DataSet = adodsWorkCurrDisc
    Left = 584
    Top = 64
  end
  object adodsWorkCurrDisc: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    Filtered = True
    LockType = ltBatchOptimistic
    OnCalcFields = adodsWorkCurrDiscCalcFields
    CommandText = 
      'SELECT wcd.ID'#13#10#9',Semester'#13#10#9',IDSubject'#13#10#9',HourLecture'#13#10#9',HourSem' +
      'inar'#13#10#9',HourPractice'#13#10#9',HourSmallGroup'#13#10#9',HourIndividual'#13#10#9',Hour' +
      'SelfWork'#13#10#9',ControlTest'#13#10#9',ControlExamination'#13#10#9',ControlCourseWo' +
      'rk'#13#10'                ,DateChange'#13#10#13#10'FROM [WorkCurriculumDisciplin' +
      'e] as wcd'#13#10'WHERE (idWorkCurriculum=:id)'#13#10'ORDER by Semester, Cont' +
      'rolExamination desc, ControlTest desc, ControlCourseWork desc'
    CommandTimeout = 90
    Parameters = <
      item
        Name = 'ID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 592
    Top = 16
    object adodsWorkCurrDiscID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object adodsWorkCurrDiscSemester: TWordField
      FieldName = 'Semester'
    end
    object adodsWorkCurrDiscIDSubject: TIntegerField
      FieldName = 'IDSubject'
    end
    object adodsWorkCurrDiscSubjectName: TStringField
      FieldKind = fkLookup
      FieldName = 'SubjectName'
      LookupDataSet = adodsSubjects
      LookupKeyFields = 'id'
      LookupResultField = 'SubjectName'
      KeyFields = 'IDSubject'
      Size = 255
      Lookup = True
    end
    object adodsWorkCurrDiscHourLecture: TSmallintField
      FieldName = 'HourLecture'
    end
    object adodsWorkCurrDiscHourSeminar: TSmallintField
      FieldName = 'HourSeminar'
    end
    object adodsWorkCurrDiscHourPractice: TSmallintField
      FieldName = 'HourPractice'
    end
    object adodsWorkCurrDiscHourSmallGroup: TSmallintField
      FieldName = 'HourSmallGroup'
    end
    object adodsWorkCurrDiscHourIndividual: TSmallintField
      FieldName = 'HourIndividual'
    end
    object adodsWorkCurrDiscHourSelfWork: TSmallintField
      FieldName = 'HourSelfWork'
    end
    object adodsWorkCurrDiscControlTest: TBooleanField
      FieldName = 'ControlTest'
    end
    object adodsWorkCurrDiscControlExamination: TBooleanField
      FieldName = 'ControlExamination'
    end
    object adodsWorkCurrDiscControlCourseWork: TBooleanField
      FieldName = 'ControlCourseWork'
    end
    object adodsWorkCurrDiscSumClassHour: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SumClassHour'
      ReadOnly = True
      Calculated = True
    end
    object adodsWorkCurrDiscSumHour: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'SumHour'
      ReadOnly = True
      Calculated = True
    end
    object adodsWorkCurrDiscDateChange: TDateTimeField
      FieldName = 'DateChange'
    end
  end
  object ADODSEntranceExam: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'select s.SubName,se.result'#13#10'from StudentEntranceExamination se'#13#10 +
      'left join [SubjectEctrance] s  on s.id=se.idSubject'#13#10'where se.ID' +
      'Student=:idstudent'#13#10
    Parameters = <
      item
        Name = 'idstudent'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 136
    Top = 701
    object ADODSEntranceExamSubName: TWideStringField
      FieldName = 'SubName'
      FixedChar = True
      Size = 150
    end
    object ADODSEntranceExamresult: TIntegerField
      FieldName = 'result'
    end
  end
  object DSEntranceExam: TDataSource
    DataSet = ADODSEntranceExam
    Left = 136
    Top = 757
  end
  object ADODSWorkDoc: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select 1 as id, '#39#1050#1086#1087#1080#1103' '#1090#1088#1091#1076#1086#1074#1086#1081' '#1082#1085#1080#1078#1082#1080#39' as docum'#13#10'union all'#13#10'sel' +
      'ect 2, '#39#1050#1086#1087#1080#1103' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1072#39#13#10'union all'#13#10'select 3,'#39#1082#1086#1087#1080#1103' '#1087#1088 +
      #1080#1087#1080#1089#1085#1086#1075#1086' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1072#39#13#10'union all'#13#10'select 4,'#39#1082#1086#1087#1080#1103' '#1089#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074 +
      #1072' '#1086' '#1088#1086#1078#1076#1077#1085#1080#1080' '#1088#1077#1073#1077#1085#1082#1072#39#13#10'union all'#13#10'select 5,'#39#1089#1087#1088#1072#1074#1082#1072' '#1080#1079' '#1078#1077#1085#1089#1082#1086#1081' '#1082 +
      #1086#1085#1089#1091#1083#1100#1090#1072#1094#1080#1080' '#1086' '#1087#1086#1089#1090#1072#1085#1086#1074#1082#1077' '#1085#1072' '#1091#1095#1077#1090#39#13#10'union all'#13#10'select 6,'#39#1089#1087#1088#1072#1074#1082#1072' ' +
      #1086' '#1087#1086#1076#1072#1095#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1076#1083#1103' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1084#1072#1075#1080#1089#1090#1088#1072#1090#1091#1088#1091#39' '#13#10'union all'#13 +
      #10'select 7,'#39#1089#1087#1088#1072#1074#1082#1072' '#1086' '#1087#1086#1076#1072#1095#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074' '#1076#1083#1103' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1072#1089#1087#1080#1088#1072#1085 +
      #1090#1091#1088#1091#39' '#13#10'union all'#13#10'select 8,'#39#1075#1072#1088#1072#1085#1090#1080#1081#1085#1086#1077' '#1087#1080#1089#1100#1084#1086' '#1086#1090' '#1088#1072#1073#1086#1090#1086#1076#1072#1090#1077#1083#1103#39 +
      #13#10'union all'#13#10'select 9,'#39#1057#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1048#1055','#1054#1054#1054#39#13#10'unio' +
      'n all'#13#10'select 10,'#39#1089#1087#1088#1072#1074#1082#1072' '#1086' '#1088#1077#1082#1086#1084#1077#1085#1076#1072#1094#1080#1080' '#1076#1083#1103' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1074' '#1072#1089#1087#1080#1088 +
      #1072#1085#1090#1091#1088#1091'/'#1084#1072#1075#1080#1089#1090#1088#1072#1090#1091#1088#1091#39#13#10'union all'#13#10'select 11,'#39#1089#1087#1088#1072#1074#1082#1072', '#1087#1086#1076#1090#1074#1077#1088#1078#1076#1072#1102 +
      #1097#1072#1103' '#1090#1088#1091#1076#1086#1091#1089#1090#1088#1086#1081#1089#1090#1074#1086#39#13#10'union all'#13#10'select 12,'#39#1051#1080#1089#1090#1086#1082' '#1091#1073#1099#1090#1080#1103' '#1055#1052#1046' ('#1076 +
      #1088#1091#1075#1072#1103' '#1089#1090#1088#1072#1085#1072')'#39#13#10'union all'#13#10'select 13,'#39#1050#1086#1087#1080#1103' '#1074#1086#1077#1085#1085#1086#1075#1086' '#1073#1080#1083#1077#1090#1072#39#13#10
    Parameters = <>
    Left = 944
    Top = 459
  end
  object DSworkDoc: TDataSource
    DataSet = ADODSWorkDoc
    Left = 944
    Top = 504
  end
  object DSPractics: TDataSource
    DataSet = ADODSPractics
    Left = 832
    Top = 796
  end
  object ADODSPractics: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'SELECT '#13#10'   namePractice, kurs, nameOfBase, result'#13#10'  FROM Stude' +
      'ntPractice'#13#10'where idstudent=:id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 824
    Top = 723
    object ADODSPracticsnamePractice: TStringField
      FieldName = 'namePractice'
      Size = 50
    end
    object ADODSPracticskurs: TIntegerField
      FieldName = 'kurs'
    end
    object ADODSPracticsnameOfBase: TStringField
      FieldName = 'nameOfBase'
      Size = 50
    end
    object ADODSPracticsresult: TIntegerField
      FieldName = 'result'
    end
  end
  object ADODSaddPractics: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'insert into StudentPractice'#13#10'(IDStudent ,namePractice, kurs ,nam' +
      'eOfBase ,result)'#13#10'output  inserted.id '#13#10'values(:idStudent,:nameP' +
      'ractice,:kurs,:nameOfBase ,:mark)'
    Parameters = <
      item
        Name = 'idStudent'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'namePractice'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'kurs'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'nameOfBase'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'mark'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 1104
    Top = 720
  end
  object DSaddPractics: TDataSource
    DataSet = ADODSaddPractics
    Left = 1104
    Top = 768
  end
  object ADODSGroupExpiri: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      '/****** '#1057#1094#1077#1085#1072#1088#1080#1081' '#1076#1083#1103' '#1082#1086#1084#1072#1085#1076#1099' SelectTopNRows '#1089#1088#1077#1076#1099' SSMS  ******/'#13 +
      #10'SELECT g.id,case when gn.GroupName is null then '#39#1041#1077#1079#1099#1084#1103#1085#1085#1072#1103#39' el' +
      'se(gn.GroupName+'#39' '#1074#1099#1087'.'#39') end as GroupName'#13#10'  FROM [group] g'#13#10'  j' +
      'oin Faculty f on f.ID=g.idFaculty'#13#10'  join StudentData sd on sd.I' +
      'DGroup=g.id'#13#10'  left join  WorkCurriculum w on w.idGroup=g.ID'#13#10'  ' +
      'left join  GroupNameByPlanNumber gn on (gn.idplan=w.idplan) and ' +
      '(g.kurs=gn.kurs) and (g.NumberGroup=gn.NumberGroup)'#13#10'  where (f.' +
      'ID=:Faculty) and (YEAR(g.DateOfExpiry)=:date) and (g.[status]=3)' +
      ' and (g.kurs in(2,4,5)) and (sd.[Status]=3)'#13#10'  group by gn.Group' +
      'Name , g.id'#13#10'union all'#13#10'SELECT g.id,gn.GroupName'#13#10'  FROM [group]' +
      ' g'#13#10'  join Faculty f on f.ID=g.idFaculty '#13#10'  left join  WorkCurr' +
      'iculum w on w.idGroup=g.ID'#13#10'  left join  GroupNameByPlanNumber g' +
      'n on (gn.idplan=w.idplan) and (g.kurs=gn.kurs) and (g.NumberGrou' +
      'p=gn.NumberGroup)'#13#10'  where (f.ID=:Faculty) and g.[status]=0  '
    Parameters = <
      item
        Name = 'Faculty'
        DataType = ftWideString
        Size = -1
        Value = Null
      end
      item
        Name = 'date'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end
      item
        Name = 'Faculty'
        Size = -1
        Value = Null
      end>
    Prepared = True
    Left = 144
    Top = 593
    object ADODSGroupExpiriid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSGroupExpiriGroupName: TWideStringField
      FieldName = 'GroupName'
      Size = 50
    end
  end
  object DSGroupExpiri: TDataSource
    DataSet = ADODSGroupExpiri
    Left = 264
    Top = 641
  end
  object DSnewCurriculum: TDataSource
    DataSet = ADODSnewCurriculum
    Left = 136
    Top = 866
  end
  object ADODSnewCurriculum: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'insert into WorkCurriculum (idPlan,idGroup,Specialization,Specia' +
      'lityCode,SpecialityAbbreviation,Speciality,Qualification,PlanGen' +
      'eration)'#13#10'output inserted.ID'#13#10'values ((select MAX(idPlan)+1 from' +
      ' WorkCurriculum),:idGroup,:Specialization,:SpecialityCode,:Speci' +
      'alityAbbreviation,:Speciality,:Qualification,:PlanGeneration)'
    Parameters = <
      item
        Name = 'idGroup'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Specialization'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'SpecialityCode'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'SpecialityAbbreviation'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'Speciality'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'Qualification'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 255
        Value = Null
      end
      item
        Name = 'PlanGeneration'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end>
    Prepared = True
    Left = 136
    Top = 914
  end
  object DSOldRup: TDataSource
    DataSet = ADODOldRUP
    Left = 618
    Top = 573
  end
  object ADODOldRUP: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      #13#10'SELECT   id'#13#10'      ,[idPlan]      '#13#10'      ,[SpecialityCode]'#13#10' ' +
      '     ,[Speciality]'#13#10'      ,[Specialization]'#13#10'      ,[Qualificati' +
      'on]'#13#10'      ,[SpecialityAbbreviation]'#13#10'      ,[PlanGeneration]'#13#10' ' +
      ' FROM [Decanat].[dbo].[WorkCurriculum]'#13#10'where  (idplan>:s) and (' +
      'idplan< :f) '#13#10
    Parameters = <
      item
        Name = 's'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'f'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 618
    Top = 525
    object ADODOldRUPid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODOldRUPidPlan: TIntegerField
      FieldName = 'idPlan'
    end
    object ADODOldRUPSpecialityCode: TWideStringField
      FieldName = 'SpecialityCode'
      Size = 50
    end
    object ADODOldRUPSpeciality: TWideStringField
      FieldName = 'Speciality'
      Size = 255
    end
    object ADODOldRUPSpecialization: TWideStringField
      FieldName = 'Specialization'
      Size = 255
    end
    object ADODOldRUPQualification: TWideStringField
      FieldName = 'Qualification'
      Size = 255
    end
    object ADODOldRUPSpecialityAbbreviation: TWideStringField
      FieldName = 'SpecialityAbbreviation'
      Size = 50
    end
    object ADODOldRUPPlanGeneration: TWordField
      FieldName = 'PlanGeneration'
    end
  end
  object ADODSSubjectOne: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select id, SubjectName from [Subject]'#13#10'where id=:id'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 742
    Top = 360
    object ADODSSubjectOneid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADODSSubjectOneSubjectName: TWideStringField
      FieldName = 'SubjectName'
      Size = 255
    end
  end
  object DSSubjectOne: TDataSource
    DataSet = ADODSSubjectOne
    Left = 482
    Top = 408
  end
  object ADODSmaxSem: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'select distinct MAX( wcd.Semester) as sem from WorkCurriculum wc' +
      ' '#13#10'join WorkCurriculumDiscipline wcd on wc.id=wcd.idWorkCurricul' +
      'um where idGroup=:idg'
    Parameters = <
      item
        Name = 'idg'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 456
    Top = 128
    object ADODSmaxSemsem: TWordField
      FieldName = 'sem'
      ReadOnly = True
    end
  end
  object DSmaxsem: TDataSource
    DataSet = ADODSmaxSem
    Left = 456
    Top = 184
  end
  object ADODSAllStudentGroup: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'SELECT id from studentdata'#13#10'where idgroup=:idg and [status] in (' +
      '0,2,4)'
    CommandTimeout = 90
    Parameters = <
      item
        Name = 'idg'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 144
    Top = 120
    object ADODSAllStudentGroupid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object DSAllStudentGroup: TDataSource
    DataSet = ADODSAllStudentGroup
    Left = 144
    Top = 168
  end
  object ADODMaxSession: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 
      'SELECT MAX(Semester)  as m   '#13#10'FROM [Decanat].[dbo].[SessionDate' +
      's]'#13#10'where idGroup=:id and GETDATE()>DateFinish'
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 184
    Top = 288
    object ADODMaxSessionm: TIntegerField
      FieldName = 'm'
      ReadOnly = True
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=This fish riba;Persist Security Inf' +
      'o=True;User ID=ProgramsUser;Initial Catalog=Decanat;Data Source=' +
      'SQL2008R2;Use Procedure for Prepare=1;Auto Translate=True;Packet' +
      ' Size=4096;Workstation ID=NONSTYLE;Use Encryption for Data=False' +
      ';Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 1256
    Top = 344
  end
  object ADODSUvedUFMS: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 
      'select  NameF ,dbo.translit (NAmeF) as nameftran,   Namei ,dbo.t' +
      'ranslit (NAmei) as nameItrans,   Nameo ,dbo.translit (NAmeo) as ' +
      'nameotrans,'#13#10'case when sex=0 then 1 else 0 end women,sex as men,' +
      'convert(varchar(10),BirthDate,104) as birthdate,BirthPlace,ch.Na' +
      'me,PassportSeries,PassportNumber'#13#10',convert(varchar(10),PassportI' +
      'ssueDate,104) as passvidan,case when AdrProg like '#39'%'#1063#1077#1083#1103#1073#1080#1085#1089#1082'%'#39' ' +
      'then AdrProg else '#39#1075'.'#1063#1077#1083#1103#1073#1080#1085#1089#1082' '#39'+AdrProg end prop,'#13#10'convert(varc' +
      'har(10),fs.DateRegistrationBegin,104) as SrokPrebOn,convert(varc' +
      'har(10),fs.DateRegistrationEnd,104) as SrokPrebEnd,'#13#10'[KratnostVi' +
      'sa],[VidVisa],[TcelVisa],[SeriaVisa],[NumberVisa],[IDvisa],[date' +
      'onvisa],[dateoffvisa],convert(varchar(10),AgreementDate,104) as ' +
      'datedog,AgreementNumber'#13#10' '#13#10'from StudentData sd'#13#10'left join Citiz' +
      'enship ch on ch.id=sd.Citizenship'#13#10' left join     [Foreingners] ' +
      'fs  on sd.ID=fs.idStudent'#13#10#13#10'where sd.id=:id'#13#10
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 1
      end>
    Prepared = True
    Left = 1176
    Top = 32
    object ADODSUvedUFMSNameF: TWideStringField
      FieldName = 'NameF'
      Size = 50
    end
    object ADODSUvedUFMSnameftran: TStringField
      FieldName = 'nameftran'
      ReadOnly = True
      Size = 4000
    end
    object ADODSUvedUFMSNamei: TWideStringField
      FieldName = 'Namei'
      Size = 50
    end
    object ADODSUvedUFMSnameItrans: TStringField
      FieldName = 'nameItrans'
      ReadOnly = True
      Size = 4000
    end
    object ADODSUvedUFMSNameo: TWideStringField
      FieldName = 'Nameo'
      Size = 50
    end
    object ADODSUvedUFMSnameotrans: TStringField
      FieldName = 'nameotrans'
      ReadOnly = True
      Size = 4000
    end
    object ADODSUvedUFMSwomen: TIntegerField
      FieldName = 'women'
      ReadOnly = True
    end
    object ADODSUvedUFMSmen: TBooleanField
      FieldName = 'men'
    end
    object ADODSUvedUFMSbirthdate: TStringField
      FieldName = 'birthdate'
      ReadOnly = True
      Size = 10
    end
    object ADODSUvedUFMSBirthPlace: TWideStringField
      FieldName = 'BirthPlace'
      Size = 300
    end
    object ADODSUvedUFMSName: TWideStringField
      FieldName = 'Name'
      Size = 100
    end
    object ADODSUvedUFMSPassportSeries: TWideStringField
      FieldName = 'PassportSeries'
      Size = 50
    end
    object ADODSUvedUFMSPassportNumber: TWideStringField
      FieldName = 'PassportNumber'
      Size = 50
    end
    object ADODSUvedUFMSpassvidan: TStringField
      FieldName = 'passvidan'
      ReadOnly = True
      Size = 10
    end
    object ADODSUvedUFMSprop: TWideStringField
      FieldName = 'prop'
      ReadOnly = True
      Size = 312
    end
    object ADODSUvedUFMSSrokPrebOn: TStringField
      FieldName = 'SrokPrebOn'
      ReadOnly = True
      Size = 10
    end
    object ADODSUvedUFMSSrokPrebEnd: TStringField
      FieldName = 'SrokPrebEnd'
      ReadOnly = True
      Size = 10
    end
    object ADODSUvedUFMSKratnostVisa: TWideStringField
      FieldName = 'KratnostVisa'
      Size = 50
    end
    object ADODSUvedUFMSVidVisa: TWideStringField
      FieldName = 'VidVisa'
      Size = 50
    end
    object ADODSUvedUFMSTcelVisa: TWideMemoField
      FieldName = 'TcelVisa'
      BlobType = ftWideMemo
    end
    object ADODSUvedUFMSSeriaVisa: TWideStringField
      FieldName = 'SeriaVisa'
      Size = 50
    end
    object ADODSUvedUFMSNumberVisa: TWideStringField
      FieldName = 'NumberVisa'
      Size = 50
    end
    object ADODSUvedUFMSIDvisa: TWideMemoField
      FieldName = 'IDvisa'
      BlobType = ftWideMemo
    end
    object ADODSUvedUFMSdateonvisa: TWideStringField
      FieldName = 'dateonvisa'
      Size = 10
    end
    object ADODSUvedUFMSdateoffvisa: TWideStringField
      FieldName = 'dateoffvisa'
      Size = 10
    end
    object ADODSUvedUFMSdatedog: TStringField
      FieldName = 'datedog'
      ReadOnly = True
      Size = 10
    end
    object ADODSUvedUFMSAgreementNumber: TWideStringField
      FieldName = 'AgreementNumber'
      Size = 50
    end
  end
  object DSUvedUFMS: TDataSource
    DataSet = ADODSUvedUFMS
    Left = 1176
    Top = 80
  end
  object ADODSinfo: TADODataSet
    Active = True
    Connection = ADOCDecanat
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandText = 'select * from InfoDep'#13#10
    Parameters = <>
    Prepared = True
    Left = 1264
    Top = 32
    object ADODSinfoname: TWideMemoField
      FieldName = 'name'
      BlobType = ftWideMemo
    end
    object ADODSinfoYurAdress: TWideMemoField
      FieldName = 'YurAdress'
      BlobType = ftWideMemo
    end
    object ADODSinfoFactAdress: TWideMemoField
      FieldName = 'FactAdress'
      BlobType = ftWideMemo
    end
    object ADODSinfotel: TWideMemoField
      FieldName = 'tel'
      BlobType = ftWideMemo
    end
    object ADODSinfofax: TWideMemoField
      FieldName = 'fax'
      BlobType = ftWideMemo
    end
    object ADODSinfoemail: TWideMemoField
      FieldName = 'e-mail'
      BlobType = ftWideMemo
    end
    object ADODSinfoRector: TWideMemoField
      FieldName = 'Rector'
      BlobType = ftWideMemo
    end
    object ADODSinfoBuh: TWideMemoField
      FieldName = 'Buh'
      BlobType = ftWideMemo
    end
    object ADODSinfoYurist: TWideMemoField
      FieldName = 'Yurist'
      BlobType = ftWideMemo
    end
    object ADODSinfolicen: TWideMemoField
      FieldName = 'licen'
      BlobType = ftWideMemo
    end
    object ADODSinfoaccredit: TWideMemoField
      FieldName = 'accredit'
      BlobType = ftWideMemo
    end
  end
  object DSinfo: TDataSource
    DataSet = ADODSinfo
    Left = 1264
    Top = 80
  end
  object ADODSsecUser: TADODataSet
    Connection = ADOCDecanat
    CursorType = ctStatic
    CommandText = 'select id, idGroup, login, FIO'#13#10'from SecurityUser'
    DataSource = dsSecurityGroup
    Parameters = <>
    Prepared = True
    Left = 1144
    Top = 248
    object AutoIncField2: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'idGroup'
    end
    object WideStringField2: TWideStringField
      FieldName = 'login'
      Size = 255
    end
    object WideStringField3: TWideStringField
      FieldName = 'FIO'
      Size = 255
    end
  end
end