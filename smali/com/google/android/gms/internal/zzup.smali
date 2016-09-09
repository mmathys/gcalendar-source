.class public final Lcom/google/android/gms/internal/zzup;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;


# instance fields
.field private zzbzd:Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzup;->zzGg()Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzup;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizedSnoozePreset()Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzup;->zzbzd:Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzup;->zzbzd:Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;-><init>()V

    const-string v1, "morning_customized_time"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzup;->zzbU(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "morning_customized_time"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzup;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/reminders/zze;->zzao(J)Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->setMorningCustomizedTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;

    :cond_1
    const-string v1, "afternoon_customized_time"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzup;->zzbU(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "afternoon_customized_time"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzup;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/reminders/zze;->zzao(J)Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->setAfternoonCustomizedTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;

    :cond_2
    const-string v1, "evening_customized_time"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzup;->zzbU(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "evening_customized_time"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzup;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/reminders/zze;->zzao(J)Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->setEveningCustomizedTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->build()Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzup;->zzbzd:Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzup;->zzbzd:Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    goto :goto_0
.end method

.method public zzGg()Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/zzp;-><init>(Lcom/google/android/gms/reminders/model/SnoozePresetChangedEvent;)V

    return-object v0
.end method
