.class public Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbAC:Lcom/google/android/gms/reminders/model/Time;

.field private zzbAD:Lcom/google/android/gms/reminders/model/Time;

.field private zzbAE:Lcom/google/android/gms/reminders/model/Time;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;
    .locals 5

    new-instance v0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->zzbAC:Lcom/google/android/gms/reminders/model/Time;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->zzbAD:Lcom/google/android/gms/reminders/model/Time;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->zzbAE:Lcom/google/android/gms/reminders/model/Time;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;Lcom/google/android/gms/reminders/model/Time;Lcom/google/android/gms/reminders/model/Time;Z)V

    return-object v0
.end method

.method public setAfternoonCustomizedTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Time;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->zzbAD:Lcom/google/android/gms/reminders/model/Time;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEveningCustomizedTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Time;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->zzbAE:Lcom/google/android/gms/reminders/model/Time;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMorningCustomizedTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Time;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset$Builder;->zzbAC:Lcom/google/android/gms/reminders/model/Time;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
