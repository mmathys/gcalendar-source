.class public Lcom/google/android/gms/reminders/zze;
.super Ljava/lang/Object;


# direct methods
.method public static zzao(J)Lcom/google/android/gms/reminders/model/Time;
    .locals 8

    const-wide/32 v4, 0x36ee80

    const-wide/32 v6, 0xea60

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x5265c00

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid timestamp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    div-long v0, p0, v4

    long-to-int v0, v0

    int-to-long v2, v0

    mul-long/2addr v2, v4

    sub-long v2, p0, v2

    div-long v4, v2, v6

    long-to-int v1, v4

    int-to-long v4, v1

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    new-instance v3, Lcom/google/android/gms/reminders/model/Time$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/reminders/model/Time$Builder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/reminders/model/Time$Builder;->setHour(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Time$Builder;->setMinute(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Time$Builder;->setSecond(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Time$Builder;->build()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
