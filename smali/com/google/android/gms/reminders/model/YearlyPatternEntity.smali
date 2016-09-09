.class public Lcom/google/android/gms/reminders/model/YearlyPatternEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/YearlyPattern;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/YearlyPatternEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

.field private final zzbCA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/reminders/model/MonthlyPatternEntity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzbCA:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->mVersionCode:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/reminders/model/MonthlyPattern;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/reminders/model/MonthlyPattern;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->mVersionCode:I

    if-eqz p3, :cond_0

    check-cast p1, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzbCA:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    if-nez p2, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzbCA:Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/MonthlyPattern;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/YearlyPattern;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getYearMonth()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;-><init>(Lcom/google/android/gms/reminders/model/MonthlyPattern;Ljava/util/List;Z)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/YearlyPattern;)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getYearMonth()Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/YearlyPattern;Lcom/google/android/gms/reminders/model/YearlyPattern;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getYearMonth()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/YearlyPattern;->getYearMonth()Ljava/util/List;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/YearlyPattern;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/YearlyPattern;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zza(Lcom/google/android/gms/reminders/model/YearlyPattern;Lcom/google/android/gms/reminders/model/YearlyPattern;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzGz()Lcom/google/android/gms/reminders/model/YearlyPattern;

    move-result-object v0

    return-object v0
.end method

.method public getMonthlyPattern()Lcom/google/android/gms/reminders/model/MonthlyPattern;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzbBJ:Lcom/google/android/gms/reminders/model/MonthlyPatternEntity;

    return-object v0
.end method

.method public getYearMonth()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zzbCA:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/YearlyPatternEntity;->zza(Lcom/google/android/gms/reminders/model/YearlyPattern;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzu;->zza(Lcom/google/android/gms/reminders/model/YearlyPatternEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGz()Lcom/google/android/gms/reminders/model/YearlyPattern;
    .locals 0

    return-object p0
.end method
