.class public Lcom/google/android/gms/reminders/model/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;


# instance fields
.field private final zzRy:Ljava/lang/String;

.field private final zzbzd:Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/zzp;->zzRy:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;->getCustomizedSnoozePreset()Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/zzp;->zzbzd:Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/zzp;->zzGg()Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/zzp;->zzRy:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomizedSnoozePreset()Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/zzp;->zzbzd:Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    return-object v0
.end method

.method public zzGg()Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;
    .locals 0

    return-object p0
.end method
