.class Lcom/google/android/gms/internal/zzun$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzmo$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzun$zzb;->onReminderCreated(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzmo$zzb",
        "<",
        "Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbyX:Ljava/lang/String;

.field final synthetic zzbyY:Ljava/lang/String;

.field final synthetic zzbyZ:Lcom/google/android/gms/internal/zzun$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzun$zzb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzun$zzb$1;->zzbyZ:Lcom/google/android/gms/internal/zzun$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzun$zzb$1;->zzbyX:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzun$zzb$1;->zzbyY:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb$1;->zzbyX:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb$1;->zzbyY:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;->onReminderCreated(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb$1;->zzbyZ:Lcom/google/android/gms/internal/zzun$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzun$zzb;->zza(Lcom/google/android/gms/internal/zzun$zzb;)Lcom/google/android/gms/internal/zzmo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzmo;->clear()V

    return-void
.end method

.method public zznu()V
    .locals 2

    const-string v0, "Reminders"

    const-string v1, "Notify reminder created listener failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic zzt(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$zzb$1;->zza(Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;)V

    return-void
.end method
