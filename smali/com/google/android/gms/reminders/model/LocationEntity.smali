.class public Lcom/google/android/gms/reminders/model/LocationEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Location;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/LocationEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field public final mVersionCode:I

.field private final zzbAY:Ljava/lang/Double;

.field private final zzbAZ:Ljava/lang/Double;

.field private final zzbBa:Ljava/lang/Integer;

.field private final zzbBb:Ljava/lang/Integer;

.field private final zzbBd:Ljava/lang/String;

.field private final zzbBf:Ljava/lang/String;

.field private final zzbBg:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

.field private final zzbBh:Lcom/google/android/gms/reminders/model/AddressEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/LocationEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;Ljava/lang/String;Lcom/google/android/gms/reminders/model/AddressEntity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbAY:Ljava/lang/Double;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbAZ:Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBa:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBb:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBg:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    iput-object p8, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBd:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBh:Lcom/google/android/gms/reminders/model/AddressEntity;

    iput-object p10, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBf:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Location;)V
    .locals 11

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLat()Ljava/lang/Double;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLng()Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getRadiusMeters()Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLocationType()Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getGeoFeatureId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getDisplayAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getAddress()Lcom/google/android/gms/reminders/model/Address;

    move-result-object v8

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLocationAliasId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/reminders/model/LocationEntity;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/FeatureIdProto;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Address;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/reminders/model/FeatureIdProto;Ljava/lang/String;Lcom/google/android/gms/reminders/model/Address;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbAY:Ljava/lang/Double;

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbAZ:Ljava/lang/Double;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBa:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBb:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBd:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBf:Ljava/lang/String;

    if-eqz p10, :cond_0

    check-cast p6, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    iput-object p6, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBg:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    check-cast p8, Lcom/google/android/gms/reminders/model/AddressEntity;

    iput-object p8, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBh:Lcom/google/android/gms/reminders/model/AddressEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p6, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBg:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    if-nez p8, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBh:Lcom/google/android/gms/reminders/model/AddressEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    invoke-direct {v0, p6}, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;-><init>(Lcom/google/android/gms/reminders/model/FeatureIdProto;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/reminders/model/AddressEntity;

    invoke-direct {v1, p8}, Lcom/google/android/gms/reminders/model/AddressEntity;-><init>(Lcom/google/android/gms/reminders/model/Address;)V

    goto :goto_2
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/Location;Lcom/google/android/gms/reminders/model/Location;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLat()Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLat()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLng()Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLng()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getRadiusMeters()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getRadiusMeters()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLocationType()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLocationType()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getGeoFeatureId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getGeoFeatureId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getDisplayAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getDisplayAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getAddress()Lcom/google/android/gms/reminders/model/Address;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getAddress()Lcom/google/android/gms/reminders/model/Address;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLocationAliasId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->getLocationAliasId()Ljava/lang/String;

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

.method public static zzb(Lcom/google/android/gms/reminders/model/Location;)I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLat()Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLng()Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getRadiusMeters()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLocationType()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getGeoFeatureId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getDisplayAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getAddress()Lcom/google/android/gms/reminders/model/Address;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Location;->getLocationAliasId()Ljava/lang/String;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/Location;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/Location;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/LocationEntity;->zza(Lcom/google/android/gms/reminders/model/Location;Lcom/google/android/gms/reminders/model/Location;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/LocationEntity;->zzGp()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Lcom/google/android/gms/reminders/model/Address;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBh:Lcom/google/android/gms/reminders/model/AddressEntity;

    return-object v0
.end method

.method public getDisplayAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBd:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoFeatureId()Lcom/google/android/gms/reminders/model/FeatureIdProto;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBg:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    return-object v0
.end method

.method public getLat()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbAY:Ljava/lang/Double;

    return-object v0
.end method

.method public getLng()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbAZ:Ljava/lang/Double;

    return-object v0
.end method

.method public getLocationAliasId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBf:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationType()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBb:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRadiusMeters()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/LocationEntity;->zzbBa:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/LocationEntity;->zzb(Lcom/google/android/gms/reminders/model/Location;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzi;->zza(Lcom/google/android/gms/reminders/model/LocationEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGp()Lcom/google/android/gms/reminders/model/Location;
    .locals 0

    return-object p0
.end method
