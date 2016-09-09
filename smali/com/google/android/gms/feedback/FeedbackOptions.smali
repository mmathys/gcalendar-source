.class public Lcom/google/android/gms/feedback/FeedbackOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/feedback/FeedbackOptions$1;,
        Lcom/google/android/gms/feedback/FeedbackOptions$CrashBuilder;,
        Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/feedback/FeedbackOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAccountInUse:Ljava/lang/String;

.field public mApplicationErrorReport:Landroid/app/ApplicationErrorReport;

.field public mBitmapTeleporter:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field public mCategoryTag:Ljava/lang/String;

.field public mDescription:Ljava/lang/String;

.field public mExcludePii:Z

.field public mFileTeleporters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/feedback/FileTeleporter;",
            ">;"
        }
    .end annotation
.end field

.field public mLogOptions:Lcom/google/android/gms/feedback/LogOptions;

.field public mPackageName:Ljava/lang/String;

.field public mPsdBundle:Landroid/os/Bundle;

.field public mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

.field public final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/feedback/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/feedback/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/feedback/FeedbackOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    const/4 v2, 0x0

    const/4 v1, 0x3

    new-instance v5, Landroid/app/ApplicationErrorReport;

    invoke-direct {v5}, Landroid/app/ApplicationErrorReport;-><init>()V

    const/4 v10, 0x1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v11, v2

    move-object v12, v2

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/feedback/FeedbackOptions;-><init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/app/ApplicationErrorReport;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;Ljava/lang/String;Ljava/util/ArrayList;ZLcom/google/android/gms/feedback/ThemeSettings;Lcom/google/android/gms/feedback/LogOptions;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/app/ApplicationErrorReport;Ljava/lang/String;Lcom/google/android/gms/common/data/BitmapTeleporter;Ljava/lang/String;Ljava/util/ArrayList;ZLcom/google/android/gms/feedback/ThemeSettings;Lcom/google/android/gms/feedback/LogOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationErrorReport;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/data/BitmapTeleporter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/feedback/FileTeleporter;",
            ">;Z",
            "Lcom/google/android/gms/feedback/ThemeSettings;",
            "Lcom/google/android/gms/feedback/LogOptions;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mAccountInUse:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mPsdBundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mApplicationErrorReport:Landroid/app/ApplicationErrorReport;

    iput-object p6, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mCategoryTag:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mBitmapTeleporter:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iput-object p8, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mPackageName:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mFileTeleporters:Ljava/util/ArrayList;

    iput-boolean p10, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mExcludePii:Z

    iput-object p11, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

    iput-object p12, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mLogOptions:Lcom/google/android/gms/feedback/LogOptions;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/feedback/FeedbackOptions$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/feedback/FeedbackOptions;-><init>()V

    return-void
.end method

.method private zzA(Landroid/os/Bundle;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mPsdBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/feedback/FeedbackOptions;Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzb(Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/feedback/FeedbackOptions;Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/feedback/FeedbackOptions;Landroid/os/Bundle;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/feedback/FeedbackOptions;Lcom/google/android/gms/feedback/LogOptions;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/LogOptions;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/feedback/FeedbackOptions;Lcom/google/android/gms/feedback/ThemeSettings;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/ThemeSettings;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzcM(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/util/ArrayList;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzf(Ljava/util/ArrayList;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/feedback/FeedbackOptions;Z)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzai(Z)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/feedback/LogOptions;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mLogOptions:Lcom/google/android/gms/feedback/LogOptions;

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/feedback/ThemeSettings;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

    return-object p0
.end method

.method private zzai(Z)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mExcludePii:Z

    return-object p0
.end method

.method private zzb(Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mApplicationErrorReport:Landroid/app/ApplicationErrorReport;

    iput-object p1, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzcN(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method private zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/data/BitmapTeleporter;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mBitmapTeleporter:Lcom/google/android/gms/common/data/BitmapTeleporter;

    :cond_0
    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzcO(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method private zzcM(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mAccountInUse:Ljava/lang/String;

    return-object p0
.end method

.method private zzcN(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method private zzcO(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mCategoryTag:Ljava/lang/String;

    return-object p0
.end method

.method private zzcP(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzcP(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method private zzf(Ljava/util/ArrayList;)Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/feedback/FileTeleporter;",
            ">;)",
            "Lcom/google/android/gms/feedback/FeedbackOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mFileTeleporters:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountInUse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mAccountInUse:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmapTeleporter()Lcom/google/android/gms/common/data/BitmapTeleporter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mBitmapTeleporter:Lcom/google/android/gms/common/data/BitmapTeleporter;

    return-object v0
.end method

.method public getCategoryTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mCategoryTag:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashInfo()Landroid/app/ApplicationErrorReport$CrashInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mApplicationErrorReport:Landroid/app/ApplicationErrorReport;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mApplicationErrorReport:Landroid/app/ApplicationErrorReport;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExcludePii()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mExcludePii:Z

    return v0
.end method

.method public getFileTeleporters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/feedback/FileTeleporter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mFileTeleporters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLogOptions()Lcom/google/android/gms/feedback/LogOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mLogOptions:Lcom/google/android/gms/feedback/LogOptions;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPsdBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mPsdBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getThemeSettings()Lcom/google/android/gms/feedback/ThemeSettings;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions;->mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/feedback/zzb;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Landroid/os/Parcel;I)V

    return-void
.end method
