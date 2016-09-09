.class public Lcom/google/android/gms/reminders/Reminders;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzun;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzun;",
            ">;"
        }
    .end annotation
.end field

.field public static final RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/Reminders;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/reminders/Reminders$1;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/Reminders$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/Reminders;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "Reminders.API"

    sget-object v2, Lcom/google/android/gms/reminders/Reminders;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/reminders/Reminders;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/reminders/Reminders;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzur;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/Reminders;->RemindersApi:Lcom/google/android/gms/reminders/RemindersApi;

    return-void
.end method
