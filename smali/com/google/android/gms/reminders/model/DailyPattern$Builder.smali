.class public Lcom/google/android/gms/reminders/model/DailyPattern$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/DailyPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbAI:Lcom/google/android/gms/reminders/model/Time;

.field private zzbAJ:Ljava/lang/Integer;

.field private zzbAK:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/DailyPattern;
    .locals 5

    new-instance v0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->zzbAI:Lcom/google/android/gms/reminders/model/Time;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->zzbAJ:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->zzbAK:Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/reminders/model/DailyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method public setAllDay(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/DailyPattern$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->zzbAK:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDayPeriod(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DailyPattern$Builder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    const-string v1, "Invalid constant for Period. Use value in ModelConstants"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->zzbAJ:Ljava/lang/Integer;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimeOfDay(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/DailyPattern$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Time;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/DailyPattern$Builder;->zzbAI:Lcom/google/android/gms/reminders/model/Time;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
