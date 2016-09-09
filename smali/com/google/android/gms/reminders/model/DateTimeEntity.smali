.class public Lcom/google/android/gms/reminders/model/DateTimeEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/DateTime;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/DateTimeEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbAK:Ljava/lang/Boolean;

.field private final zzbAM:Ljava/lang/Integer;

.field private final zzbAN:Ljava/lang/Integer;

.field private final zzbAO:Ljava/lang/Integer;

.field private final zzbAQ:Ljava/lang/Integer;

.field private final zzbAR:Ljava/lang/Integer;

.field private final zzbAS:Ljava/lang/Long;

.field private final zzbAT:Ljava/lang/Boolean;

.field private final zzbAU:Lcom/google/android/gms/reminders/model/TimeEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/TimeEntity;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAM:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAN:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAO:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAU:Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p6, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAQ:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAR:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAS:Ljava/lang/Long;

    iput-object p9, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAT:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAK:Ljava/lang/Boolean;

    iput p1, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/DateTime;)V
    .locals 11

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getDateRange()Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getUnspecifiedFutureTime()Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getAllDay()Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/Time;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAM:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAN:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAO:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAQ:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAR:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAS:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAT:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAK:Ljava/lang/Boolean;

    if-eqz p10, :cond_0

    check-cast p4, Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAU:Lcom/google/android/gms/reminders/model/TimeEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p4, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAU:Lcom/google/android/gms/reminders/model/TimeEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/TimeEntity;

    invoke-direct {v0, p4}, Lcom/google/android/gms/reminders/model/TimeEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    goto :goto_1
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDateRange()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getDateRange()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getUnspecifiedFutureTime()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getUnspecifiedFutureTime()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAllDay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->getAllDay()Ljava/lang/Boolean;

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

.method public static zzb(Lcom/google/android/gms/reminders/model/DateTime;)I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getYear()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getMonth()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDay()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getPeriod()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getDateRange()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAbsoluteTimeMs()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getUnspecifiedFutureTime()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/DateTime;->getAllDay()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/DateTime;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/DateTime;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zza(Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzGl()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getAbsoluteTimeMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAS:Ljava/lang/Long;

    return-object v0
.end method

.method public getAllDay()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAK:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDateRange()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAR:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDay()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAO:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMonth()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAN:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPeriod()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAQ:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTime()Lcom/google/android/gms/reminders/model/Time;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAU:Lcom/google/android/gms/reminders/model/TimeEntity;

    return-object v0
.end method

.method public getUnspecifiedFutureTime()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAT:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getYear()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzbAM:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/DateTimeEntity;->zzb(Lcom/google/android/gms/reminders/model/DateTime;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzf;->zza(Lcom/google/android/gms/reminders/model/DateTimeEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGl()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 0

    return-object p0
.end method
