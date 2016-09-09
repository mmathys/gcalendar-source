.class public final Lcom/google/android/gms/common/stats/zzd;
.super Ljava/lang/Object;


# static fields
.field public static LOG_LEVEL_OFF:I

.field public static zzarA:I

.field public static zzarB:I

.field public static zzarC:I

.field public static zzarD:I

.field public static zzarE:I

.field public static zzarF:I

.field public static final zzary:Landroid/content/ComponentName;

.field public static zzarz:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzd;->zzary:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->zzarz:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzarA:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzarB:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzarC:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzarD:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzarE:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->zzarF:I

    return-void
.end method
