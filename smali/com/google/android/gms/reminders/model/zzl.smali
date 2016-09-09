.class public Lcom/google/android/gms/reminders/model/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/reminders/model/RecurrenceEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Lcom/google/android/gms/reminders/model/RecurrenceEntity;Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzbb(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->mVersionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->getFrequency()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->getEvery()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->getRecurrenceStart()Lcom/google/android/gms/reminders/model/RecurrenceStart;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->getRecurrenceEnd()Lcom/google/android/gms/reminders/model/RecurrenceEnd;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->getDailyPattern()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->getWeeklyPattern()Lcom/google/android/gms/reminders/model/WeeklyPattern;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;->getYearlyPattern()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzb;->zzJ(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/reminders/model/zzl;->zzjH(Landroid/os/Parcel;)Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/reminders/model/zzl;->zzns(I)[Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    move-result-object v0

    return-object v0
.end method

.method public zzjH(Landroid/os/Parcel;)Lcom/google/android/gms/reminders/model/RecurrenceEntity;
    .locals 12

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzba(Landroid/os/Parcel;)I

    move-result v10

    const/4 v1, 0x0

    move-object v8, v9

    move-object v7, v9

    move-object v6, v9

    move-object v5, v9

    move-object v4, v9

    move-object v3, v9

    move-object v2, v9

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v10, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzaZ(Landroid/os/Parcel;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzdc(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzb(Landroid/os/Parcel;I)V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzg(Landroid/os/Parcel;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzh(Landroid/os/Parcel;I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zzh(Landroid/os/Parcel;I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    sget-object v4, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;

    move-object v4, v0

    goto :goto_0

    :pswitch_4
    sget-object v5, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v5}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;

    move-object v5, v0

    goto :goto_0

    :pswitch_5
    sget-object v6, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v6}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;

    move-object v6, v0

    goto :goto_0

    :pswitch_6
    sget-object v7, Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v7}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;

    move-object v7, v0

    goto :goto_0

    :pswitch_7
    sget-object v8, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v8}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    move-object v8, v0

    goto :goto_0

    :pswitch_8
    sget-object v9, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v9}, Lcom/google/android/gms/common/internal/safeparcel/zza;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;

    move-object v9, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v10, :cond_1

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overread allowed size end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/safeparcel/zza$zza;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/RecurrenceStartEntity;Lcom/google/android/gms/reminders/model/RecurrenceEndEntity;Lcom/google/android/gms/reminders/model/DailyPatternEntity;Lcom/google/android/gms/reminders/model/WeeklyPatternEntity;Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;Lcom/google/android/gms/reminders/model/YearlyPatternEntity;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public zzns(I)[Lcom/google/android/gms/reminders/model/RecurrenceEntity;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    return-object v0
.end method
