.class public Lcom/google/android/gms/reminders/model/CategoryInfoEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/CategoryInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/CategoryInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzQv:Ljava/lang/String;

.field private final zzbAy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zzbAy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zzQv:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/CategoryInfo;)V
    .locals 3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/CategoryInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/CategoryInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/CategoryInfo;)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CategoryInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CategoryInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/CategoryInfo;Lcom/google/android/gms/reminders/model/CategoryInfo;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CategoryInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/CategoryInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CategoryInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/CategoryInfo;->getDisplayName()Ljava/lang/String;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/CategoryInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/CategoryInfo;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zza(Lcom/google/android/gms/reminders/model/CategoryInfo;Lcom/google/android/gms/reminders/model/CategoryInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zzGi()Lcom/google/android/gms/reminders/model/CategoryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zzbAy:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zzQv:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/CategoryInfoEntity;->zza(Lcom/google/android/gms/reminders/model/CategoryInfo;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzb;->zza(Lcom/google/android/gms/reminders/model/CategoryInfoEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGi()Lcom/google/android/gms/reminders/model/CategoryInfo;
    .locals 0

    return-object p0
.end method
