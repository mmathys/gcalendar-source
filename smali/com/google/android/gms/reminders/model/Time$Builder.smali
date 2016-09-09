.class public Lcom/google/android/gms/reminders/model/Time$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbCw:Ljava/lang/Integer;

.field private zzbCx:Ljava/lang/Integer;

.field private zzbCy:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/Time;
    .locals 5

    new-instance v0, Lcom/google/android/gms/reminders/model/TimeEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->zzbCw:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->zzbCx:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->zzbCy:Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/reminders/model/TimeEntity;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-object v0
.end method

.method public setHour(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->zzbCw:Ljava/lang/Integer;

    return-object p0
.end method

.method public setMinute(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->zzbCx:Ljava/lang/Integer;

    return-object p0
.end method

.method public setSecond(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Time$Builder;->zzbCy:Ljava/lang/Integer;

    return-object p0
.end method
