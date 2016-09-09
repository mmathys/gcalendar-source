.class public Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/MonthlyPattern;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbBo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbBp:Ljava/lang/Integer;

.field private final zzbBq:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBo:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBp:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBq:Ljava/lang/Integer;

    iput p1, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/MonthlyPattern;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getMonthDay()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDay()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDayNumber()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;-><init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBp:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBq:Ljava/lang/Integer;

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBo:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBo:Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/MonthlyPattern;)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getMonthDay()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDay()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDayNumber()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/MonthlyPattern;Lcom/google/android/gms/reminders/model/MonthlyPattern;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getMonthDay()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getMonthDay()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDay()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDayNumber()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/MonthlyPattern;->getWeekDayNumber()Ljava/lang/Integer;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/MonthlyPattern;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/MonthlyPattern;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zza(Lcom/google/android/gms/reminders/model/MonthlyPattern;Lcom/google/android/gms/reminders/model/MonthlyPattern;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzGq()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v0

    return-object v0
.end method

.method public getMonthDay()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBo:Ljava/util/List;

    return-object v0
.end method

.method public getWeekDay()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBp:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWeekDayNumber()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zzbBq:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;->zza(Lcom/google/android/gms/reminders/model/MonthlyPattern;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzk;->zza(Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGq()Lcom/google/android/gms/reminders/model/MonthlyPattern;
    .locals 0

    return-object p0
.end method
