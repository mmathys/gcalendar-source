.class public Lcom/google/android/gms/reminders/model/DateTime$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbAK:Ljava/lang/Boolean;

.field private zzbAM:Ljava/lang/Integer;

.field private zzbAN:Ljava/lang/Integer;

.field private zzbAO:Ljava/lang/Integer;

.field private zzbAP:Lcom/google/android/gms/reminders/model/Time;

.field private zzbAQ:Ljava/lang/Integer;

.field private zzbAR:Ljava/lang/Integer;

.field private zzbAS:Ljava/lang/Long;

.field private zzbAT:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 11

    new-instance v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAM:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAN:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAO:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAP:Lcom/google/android/gms/reminders/model/Time;

    iget-object v5, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAQ:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAR:Ljava/lang/Integer;

    iget-object v7, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAS:Ljava/lang/Long;

    iget-object v8, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAT:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAK:Ljava/lang/Boolean;

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Z)V

    return-object v0
.end method

.method public setAbsoluteTimeMs(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAS:Ljava/lang/Long;

    return-object p0
.end method

.method public setAllDay(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAK:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDay(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAO:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMonth(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAN:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Time;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Time;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAP:Lcom/google/android/gms/reminders/model/Time;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUnspecifiedFutureTime(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAT:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setYear(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTime$Builder;->zzbAM:Ljava/lang/Integer;

    return-object p0
.end method
