.class Lcom/google/android/gms/internal/zzsw$1;
.super Lcom/google/android/gms/people/People$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzsw;->loadAutocompleteList(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/people/People$zza",
        "<",
        "Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaNj:Ljava/lang/String;

.field final synthetic zzbrw:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

.field final synthetic zzbrx:Lcom/google/android/gms/internal/zzsw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsw$1;->zzbrx:Lcom/google/android/gms/internal/zzsw;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzsw$1;->zzaNj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzsw$1;->zzbrw:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    invoke-direct {p0, p2}, Lcom/google/android/gms/people/People$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsw$1;->zzbK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/people/internal/zzn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsw$1;->zza(Lcom/google/android/gms/people/internal/zzn;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/people/internal/zzn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsw$1;->zzaNj:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsw$1;->zzbrw:Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/people/internal/zzn;->zza(Lcom/google/android/gms/internal/zzmc$zzb;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V

    return-void
.end method

.method protected zzbK(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsw$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzsw$1$1;-><init>(Lcom/google/android/gms/internal/zzsw$1;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
