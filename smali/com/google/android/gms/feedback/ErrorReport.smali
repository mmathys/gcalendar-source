.class public Lcom/google/android/gms/feedback/ErrorReport;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/feedback/ErrorReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public account:Ljava/lang/String;

.field public anrStackTraces:Ljava/lang/String;

.field public applicationErrorReport:Landroid/app/ApplicationErrorReport;

.field public bitmapTeleporter:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field public board:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public buildFingerprint:Ljava/lang/String;

.field public buildId:Ljava/lang/String;

.field public buildType:Ljava/lang/String;

.field public categoryTag:Ljava/lang/String;

.field public classificationSignals:Landroid/os/Bundle;

.field public codename:Ljava/lang/String;

.field public color:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public description:Ljava/lang/String;

.field public device:Ljava/lang/String;

.field public eventLog:[Ljava/lang/String;

.field public exceptionClassName:Ljava/lang/String;

.field public exceptionMessage:Ljava/lang/String;

.field public excludePii:Z

.field public fileTeleporterList:[Lcom/google/android/gms/feedback/FileTeleporter;

.field public incremental:Ljava/lang/String;

.field public isCtlAllowed:Z

.field public isSilentSend:Z

.field public launcher:Ljava/lang/String;

.field public localeString:Ljava/lang/String;

.field public logOptions:Lcom/google/android/gms/feedback/LogOptions;

.field public model:Ljava/lang/String;

.field public networkMcc:I

.field public networkMnc:I

.field public networkName:Ljava/lang/String;

.field public networkType:I

.field public packageVersion:I

.field public packageVersionName:Ljava/lang/String;

.field public phoneType:I

.field public product:Ljava/lang/String;

.field public psdBundle:Landroid/os/Bundle;

.field public psdFilePaths:[Ljava/lang/String;

.field public release:Ljava/lang/String;

.field public runningApplications:[Ljava/lang/String;

.field public screenshot:Ljava/lang/String;

.field public screenshotBytes:[B

.field public screenshotHeight:I

.field public screenshotPath:Ljava/lang/String;

.field public screenshotWidth:I

.field public sdk_int:I

.field public stackTrace:Ljava/lang/String;

.field public submittingPackageName:Ljava/lang/String;

.field public suggestionSessionId:Ljava/lang/String;

.field public suggestionShown:Z

.field public systemLog:[Ljava/lang/String;

.field public themeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

.field public throwClassName:Ljava/lang/String;

.field public throwFileName:Ljava/lang/String;

.field public throwLineNumber:I

.field public throwMethodName:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/feedback/zza;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/feedback/ErrorReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/ApplicationErrorReport;

    invoke-direct {v0}, Landroid/app/ApplicationErrorReport;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->applicationErrorReport:Landroid/app/ApplicationErrorReport;

    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->versionCode:I

    return-void
.end method

.method constructor <init>(ILandroid/app/ApplicationErrorReport;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZIIZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;Ljava/lang/String;[Lcom/google/android/gms/feedback/FileTeleporter;[Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/gms/feedback/ThemeSettings;Lcom/google/android/gms/feedback/LogOptions;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/app/ApplicationErrorReport;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/feedback/ErrorReport;->applicationErrorReport:Landroid/app/ApplicationErrorReport;

    iput p1, p0, Lcom/google/android/gms/feedback/ErrorReport;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/feedback/ErrorReport;->applicationErrorReport:Landroid/app/ApplicationErrorReport;

    iput-object p3, p0, Lcom/google/android/gms/feedback/ErrorReport;->description:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/feedback/ErrorReport;->packageVersion:I

    iput-object p5, p0, Lcom/google/android/gms/feedback/ErrorReport;->packageVersionName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/feedback/ErrorReport;->device:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/feedback/ErrorReport;->buildId:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/feedback/ErrorReport;->buildType:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/feedback/ErrorReport;->model:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/feedback/ErrorReport;->product:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/feedback/ErrorReport;->buildFingerprint:Ljava/lang/String;

    iput p12, p0, Lcom/google/android/gms/feedback/ErrorReport;->sdk_int:I

    iput-object p13, p0, Lcom/google/android/gms/feedback/ErrorReport;->release:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->incremental:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->codename:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->board:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->brand:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->runningApplications:[Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->systemLog:[Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->eventLog:[Ljava/lang/String;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->anrStackTraces:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->screenshot:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->screenshotBytes:[B

    move/from16 v0, p24

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->screenshotHeight:I

    move/from16 v0, p25

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->screenshotWidth:I

    move/from16 v0, p26

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->phoneType:I

    move/from16 v0, p27

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->networkType:I

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->networkName:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->account:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->localeString:Ljava/lang/String;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->psdBundle:Landroid/os/Bundle;

    move/from16 v0, p32

    iput-boolean v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->isSilentSend:Z

    move/from16 v0, p33

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->networkMcc:I

    move/from16 v0, p34

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->networkMnc:I

    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->isCtlAllowed:Z

    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->exceptionClassName:Ljava/lang/String;

    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->throwFileName:Ljava/lang/String;

    move/from16 v0, p38

    iput v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->throwLineNumber:I

    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->throwClassName:Ljava/lang/String;

    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->throwMethodName:Ljava/lang/String;

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->stackTrace:Ljava/lang/String;

    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->exceptionMessage:Ljava/lang/String;

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->categoryTag:Ljava/lang/String;

    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->color:Ljava/lang/String;

    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->submittingPackageName:Ljava/lang/String;

    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->bitmapTeleporter:Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->screenshotPath:Ljava/lang/String;

    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->fileTeleporterList:[Lcom/google/android/gms/feedback/FileTeleporter;

    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->psdFilePaths:[Ljava/lang/String;

    move/from16 v0, p50

    iput-boolean v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->excludePii:Z

    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->launcher:Ljava/lang/String;

    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->themeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->logOptions:Lcom/google/android/gms/feedback/LogOptions;

    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->suggestionSessionId:Ljava/lang/String;

    move/from16 v0, p55

    iput-boolean v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->suggestionShown:Z

    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/google/android/gms/feedback/ErrorReport;->classificationSignals:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/feedback/zza;->zza(Lcom/google/android/gms/feedback/ErrorReport;Landroid/os/Parcel;I)V

    return-void
.end method
