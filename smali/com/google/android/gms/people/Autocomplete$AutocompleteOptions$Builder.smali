.class public final Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field private zzbkB:Z

.field private zzbkC:Ljava/lang/String;

.field private zzbkD:Ljava/lang/String;

.field private zzbkE:I

.field private zzbkF:I

.field private zzbkG:I

.field private zzbkH:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google"

    iput-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkD:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkE:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkG:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkH:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkB:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkE:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkF:I

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkG:I

    return v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkH:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions;-><init>(Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;Lcom/google/android/gms/people/Autocomplete$1;)V

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->mAccount:Ljava/lang/String;

    return-object p0
.end method

.method public setUseAndroidContactFallback(Z)Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/people/Autocomplete$AutocompleteOptions$Builder;->zzbkH:Z

    return-object p0
.end method
