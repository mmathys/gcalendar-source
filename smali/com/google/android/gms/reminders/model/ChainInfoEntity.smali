.class public Lcom/google/android/gms/reminders/model/ChainInfoEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/ChainInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/ChainInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbAB:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

.field private final zzbAz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zzbAz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zzbAB:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    iput p1, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/ChainInfo;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ChainInfo;->getChainName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ChainInfo;->getChainId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;-><init>(Ljava/lang/String;Lcom/google/android/gms/reminders/model/FeatureIdProto;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/reminders/model/FeatureIdProto;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->mVersionCode:I

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zzbAz:Ljava/lang/String;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zzbAB:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zzbAB:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    invoke-direct {v0, p2}, Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;-><init>(Lcom/google/android/gms/reminders/model/FeatureIdProto;)V

    goto :goto_1
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/ChainInfo;)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/ChainInfo;->getChainName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/ChainInfo;->getChainId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/ChainInfo;Lcom/google/android/gms/reminders/model/ChainInfo;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/ChainInfo;->getChainName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ChainInfo;->getChainName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/ChainInfo;->getChainId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ChainInfo;->getChainId()Lcom/google/android/gms/reminders/model/FeatureIdProto;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/ChainInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/ChainInfo;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zza(Lcom/google/android/gms/reminders/model/ChainInfo;Lcom/google/android/gms/reminders/model/ChainInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zzGj()Lcom/google/android/gms/reminders/model/ChainInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()Lcom/google/android/gms/reminders/model/FeatureIdProto;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zzbAB:Lcom/google/android/gms/reminders/model/FeatureIdProtoEntity;

    return-object v0
.end method

.method public getChainName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zzbAz:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/ChainInfoEntity;->zza(Lcom/google/android/gms/reminders/model/ChainInfo;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzc;->zza(Lcom/google/android/gms/reminders/model/ChainInfoEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGj()Lcom/google/android/gms/reminders/model/ChainInfo;
    .locals 0

    return-object p0
.end method
