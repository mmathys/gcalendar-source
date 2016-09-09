.class public final Lcom/google/android/gms/common/stats/zzc$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static zzars:Lcom/google/android/gms/common/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static zzart:Lcom/google/android/gms/common/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzaru:Lcom/google/android/gms/common/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzarv:Lcom/google/android/gms/common/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzarw:Lcom/google/android/gms/common/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzarx:Lcom/google/android/gms/common/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/config/GservicesValue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "gms:common:stats:connections:level"

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzars:Lcom/google/android/gms/common/config/GservicesValue;

    const-string v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzart:Lcom/google/android/gms/common/config/GservicesValue;

    const-string v0, "gms:common:stats:connections:ignored_calling_services"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzaru:Lcom/google/android/gms/common/config/GservicesValue;

    const-string v0, "gms:common:stats:connections:ignored_target_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzarv:Lcom/google/android/gms/common/config/GservicesValue;

    const-string v0, "gms:common:stats:connections:ignored_target_services"

    const-string v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzarw:Lcom/google/android/gms/common/config/GservicesValue;

    const-string v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzarx:Lcom/google/android/gms/common/config/GservicesValue;

    return-void
.end method
