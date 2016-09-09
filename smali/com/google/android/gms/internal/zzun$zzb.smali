.class final Lcom/google/android/gms/internal/zzun$zzb;
.super Lcom/google/android/gms/internal/zzun$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzb"
.end annotation


# instance fields
.field private final zzayv:Lcom/google/android/gms/internal/zzmo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzmo",
            "<",
            "Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzmc$zzb;Lcom/google/android/gms/internal/zzmo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzmc$zzb",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzmo",
            "<",
            "Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzun$zzd;-><init>(Lcom/google/android/gms/internal/zzmc$zzb;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzun$zzb;->zzayv:Lcom/google/android/gms/internal/zzmo;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzun$zzb;)Lcom/google/android/gms/internal/zzmo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->zzayv:Lcom/google/android/gms/internal/zzmo;

    return-object v0
.end method


# virtual methods
.method public onReminderCreated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->zzayv:Lcom/google/android/gms/internal/zzmo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->zzayv:Lcom/google/android/gms/internal/zzmo;

    new-instance v1, Lcom/google/android/gms/internal/zzun$zzb$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzun$zzb$1;-><init>(Lcom/google/android/gms/internal/zzun$zzb;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmo;->zza(Lcom/google/android/gms/internal/zzmo$zzb;)V

    :cond_0
    return-void
.end method
