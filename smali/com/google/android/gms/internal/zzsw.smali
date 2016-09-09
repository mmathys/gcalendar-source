.class public Lcom/google/android/gms/internal/zzsw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Autocomplete;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAutocompleteList(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/Autocomplete$AutocompleteResult;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzA(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/people/internal/zzl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loadAutocompleteList"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/people/internal/zzl;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzsw$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzsw$1;-><init>(Lcom/google/android/gms/internal/zzsw;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/internal/zzmc$zza;)Lcom/google/android/gms/internal/zzmc$zza;

    move-result-object v0

    return-object v0
.end method
