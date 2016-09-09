.class public final Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/people/identity/internal/zzj;


# instance fields
.field private final mVersionCode:I

.field final zzblo:Ljava/lang/String;

.field final zzblp:Landroid/os/Bundle;

.field final zzblt:Z

.field final zzbno:Z

.field final zzbnp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/identity/internal/zzj;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/zzj;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->CREATOR:Lcom/google/android/gms/people/identity/internal/zzj;

    return-void
.end method

.method constructor <init>(IZZZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzbno:Z

    iput-boolean p3, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzblt:Z

    iput-object p5, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzblo:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzbnp:Z

    if-nez p6, :cond_0

    new-instance p6, Landroid/os/Bundle;

    invoke-direct {p6}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p6, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzblp:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzw;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "useOfflineDatabase"

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzbno:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "useWebData"

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzblt:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "useCP2"

    iget-boolean v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzbnp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    const-string v1, "endpoint"

    iget-object v2, p0, Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;->zzblo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzw$zza;->zzc(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzw$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/people/identity/internal/zzj;->zza(Lcom/google/android/gms/people/identity/internal/ParcelableListOptions;Landroid/os/Parcel;I)V

    return-void
.end method
