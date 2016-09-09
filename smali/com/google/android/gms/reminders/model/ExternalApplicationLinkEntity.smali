.class public Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/ExternalApplicationLink;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbAV:Ljava/lang/Integer;

.field private final zzvZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->zzbAV:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->zzvZ:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/ExternalApplicationLink;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getApplication()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;-><init>(Ljava/lang/Integer;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;-><init>(ILjava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/ExternalApplicationLink;)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getApplication()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/ExternalApplicationLink;Lcom/google/android/gms/reminders/model/ExternalApplicationLink;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getApplication()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getApplication()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;->getId()Ljava/lang/String;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->zza(Lcom/google/android/gms/reminders/model/ExternalApplicationLink;Lcom/google/android/gms/reminders/model/ExternalApplicationLink;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->zzGm()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->zzbAV:Ljava/lang/Integer;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->zzvZ:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;->zza(Lcom/google/android/gms/reminders/model/ExternalApplicationLink;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzg;->zza(Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGm()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;
    .locals 0

    return-object p0
.end method
