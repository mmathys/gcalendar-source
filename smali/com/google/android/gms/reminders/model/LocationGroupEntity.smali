.class public Lcom/google/android/gms/reminders/model/LocationGroupEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/LocationGroup;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/LocationGroupEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbBi:Ljava/lang/String;

.field private final zzbBj:Ljava/lang/Integer;

.field private final zzbBm:Lcom/google/android/gms/reminders/model/ChainInfoEntity;

.field private final zzbBn:Lcom/google/android/gms/reminders/model/CategoryInfoEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/ChainInfoEntity;Lcom/google/android/gms/reminders/model/CategoryInfoEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBi:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBj:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBm:Lcom/google/android/gms/reminders/model/ChainInfoEntity;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBn:Lcom/google/android/gms/reminders/model/CategoryInfoEntity;

    iput p1, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/LocationGroup;)V
    .locals 6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/LocationGroup;->getLocationQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/LocationGroup;->getLocationQueryType()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/LocationGroup;->getChainInfo()Lcom/google/android/gms/reminders/model/ChainInfo;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/LocationGroup;->getCategoryInfo()Lcom/google/android/gms/reminders/model/CategoryInfo;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/ChainInfo;Lcom/google/android/gms/reminders/model/CategoryInfo;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/ChainInfo;Lcom/google/android/gms/reminders/model/CategoryInfo;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBi:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBj:Ljava/lang/Integer;

    if-eqz p5, :cond_0

    check-cast p3, Lcom/google/android/gms/reminders/model/ChainInfoEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBm:Lcom/google/android/gms/reminders/model/ChainInfoEntity;

    check-cast p4, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBn:Lcom/google/android/gms/reminders/model/CategoryInfoEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBm:Lcom/google/android/gms/reminders/model/ChainInfoEntity;

    if-nez p4, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBn:Lcom/google/android/gms/reminders/model/CategoryInfoEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;

    invoke-direct {v0, p3}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/ChainInfo;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;

    invoke-direct {v1, p4}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/CategoryInfo;)V

    goto :goto_2
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/LocationGroup;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/LocationGroup;->getLocationQuery()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/LocationGroup;->getLocationQueryType()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/LocationGroup;->getChainInfo()Lcom/google/android/gms/reminders/model/ChainInfo;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/LocationGroup;->getCategoryInfo()Lcom/google/android/gms/reminders/model/CategoryInfo;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/LocationGroup;Lcom/google/android/gms/reminders/model/LocationGroup;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/LocationGroup;->getLocationQuery()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/LocationGroup;->getLocationQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/LocationGroup;->getLocationQueryType()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/LocationGroup;->getLocationQueryType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/LocationGroup;->getChainInfo()Lcom/google/android/gms/reminders/model/ChainInfo;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/LocationGroup;->getChainInfo()Lcom/google/android/gms/reminders/model/ChainInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/LocationGroup;->getCategoryInfo()Lcom/google/android/gms/reminders/model/CategoryInfo;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/LocationGroup;->getCategoryInfo()Lcom/google/android/gms/reminders/model/CategoryInfo;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/LocationGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/LocationGroup;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zza(Lcom/google/android/gms/reminders/model/LocationGroup;Lcom/google/android/gms/reminders/model/LocationGroup;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzGo()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryInfo()Lcom/google/android/gms/reminders/model/CategoryInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBn:Lcom/google/android/gms/reminders/model/CategoryInfoEntity;

    return-object v0
.end method

.method public getChainInfo()Lcom/google/android/gms/reminders/model/ChainInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBm:Lcom/google/android/gms/reminders/model/ChainInfoEntity;

    return-object v0
.end method

.method public getLocationQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBi:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationQueryType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zzbBj:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;->zza(Lcom/google/android/gms/reminders/model/LocationGroup;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzj;->zza(Lcom/google/android/gms/reminders/model/LocationGroupEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGo()Lcom/google/android/gms/reminders/model/LocationGroup;
    .locals 0

    return-object p0
.end method
