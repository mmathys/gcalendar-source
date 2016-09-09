.class public Lcom/google/android/gms/reminders/model/DailyPatternEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/DailyPattern;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/DailyPatternEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbAJ:Ljava/lang/Integer;

.field private final zzbAK:Ljava/lang/Boolean;

.field private final zzbAL:Lcom/google/android/gms/reminders/model/TimeEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zze;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/reminders/model/TimeEntity;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAL:Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAJ:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAK:Ljava/lang/Boolean;

    iput p1, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/DailyPattern;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DailyPattern;->getTimeOfDay()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DailyPattern;->getDayPeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DailyPattern;->getAllDay()Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/reminders/model/DailyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Boolean;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAJ:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAK:Ljava/lang/Boolean;

    if-eqz p4, :cond_0

    check-cast p1, Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAL:Lcom/google/android/gms/reminders/model/TimeEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAL:Lcom/google/android/gms/reminders/model/TimeEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/TimeEntity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/reminders/model/TimeEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    goto :goto_1
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/DailyPattern;)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DailyPattern;->getTimeOfDay()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DailyPattern;->getDayPeriod()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DailyPattern;->getAllDay()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/DailyPattern;Lcom/google/android/gms/reminders/model/DailyPattern;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DailyPattern;->getTimeOfDay()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DailyPattern;->getTimeOfDay()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DailyPattern;->getDayPeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DailyPattern;->getDayPeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DailyPattern;->getAllDay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DailyPattern;->getAllDay()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/DailyPattern;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/DailyPattern;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zza(Lcom/google/android/gms/reminders/model/DailyPattern;Lcom/google/android/gms/reminders/model/DailyPattern;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzGk()Lcom/google/android/gms/reminders/model/DailyPattern;

    move-result-object v0

    return-object v0
.end method

.method public getAllDay()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAK:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDayPeriod()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAJ:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimeOfDay()Lcom/google/android/gms/reminders/model/Time;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zzbAL:Lcom/google/android/gms/reminders/model/TimeEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/DailyPatternEntity;->zza(Lcom/google/android/gms/reminders/model/DailyPattern;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zze;->zza(Lcom/google/android/gms/reminders/model/DailyPatternEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGk()Lcom/google/android/gms/reminders/model/DailyPattern;
    .locals 0

    return-object p0
.end method
