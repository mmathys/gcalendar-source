.class public abstract Lcom/google/android/gms/common/config/GservicesValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/config/GservicesValue$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static zzamf:Lcom/google/android/gms/common/config/GservicesValue$zza;

.field private static zzamg:I

.field private static zzamh:Ljava/lang/String;

.field private static final zzqd:Ljava/lang/Object;


# instance fields
.field protected final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final mKey:Ljava/lang/String;

.field private zzNb:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzqd:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzamf:Lcom/google/android/gms/common/config/GservicesValue$zza;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/config/GservicesValue;->zzamg:I

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    sput-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzamh:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzNb:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/config/GservicesValue;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static getSharedUserId()I
    .locals 1

    sget v0, Lcom/google/android/gms/common/config/GservicesValue;->zzamg:I

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzamf:Lcom/google/android/gms/common/config/GservicesValue$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/config/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/GservicesValue$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/GservicesValue$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/config/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/GservicesValue$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/GservicesValue$2;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/config/GservicesValue$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/config/GservicesValue$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic zznZ()Lcom/google/android/gms/common/config/GservicesValue$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/config/GservicesValue;->zzamf:Lcom/google/android/gms/common/config/GservicesValue$zza;

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzNb:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->zzNb:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/config/GservicesValue;->retrieve(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
