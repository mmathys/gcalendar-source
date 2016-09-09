.class public Lcom/google/android/gms/internal/zzof;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzof$zze;,
        Lcom/google/android/gms/internal/zzof$zzf;,
        Lcom/google/android/gms/internal/zzof$zzc;,
        Lcom/google/android/gms/internal/zzof$zzd;,
        Lcom/google/android/gms/internal/zzof$zzb;,
        Lcom/google/android/gms/internal/zzof$zza;
    }
.end annotation


# static fields
.field public static final zzaBK:Lcom/google/android/gms/internal/zzof$zza;

.field public static final zzaBL:Lcom/google/android/gms/internal/zzof$zzb;

.field public static final zzaBM:Lcom/google/android/gms/internal/zzof$zzd;

.field public static final zzaBN:Lcom/google/android/gms/internal/zzof$zzc;

.field public static final zzaBO:Lcom/google/android/gms/internal/zzof$zzf;

.field public static final zzaBP:Lcom/google/android/gms/internal/zzof$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const v3, 0x3e8fa0

    new-instance v0, Lcom/google/android/gms/internal/zzof$zza;

    const-string v1, "created"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzof$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzof;->zzaBK:Lcom/google/android/gms/internal/zzof$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzof$zzb;

    const-string v1, "lastOpenedTime"

    const v2, 0x419ce0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzof$zzb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzof;->zzaBL:Lcom/google/android/gms/internal/zzof$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzof$zzd;

    const-string v1, "modified"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzof$zzd;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzof;->zzaBM:Lcom/google/android/gms/internal/zzof$zzd;

    new-instance v0, Lcom/google/android/gms/internal/zzof$zzc;

    const-string v1, "modifiedByMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzof$zzc;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzof;->zzaBN:Lcom/google/android/gms/internal/zzof$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzof$zzf;

    const-string v1, "sharedWithMe"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzof$zzf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzof;->zzaBO:Lcom/google/android/gms/internal/zzof$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzof$zze;

    const-string v1, "recency"

    const v2, 0x7a1200

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzof$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzof;->zzaBP:Lcom/google/android/gms/internal/zzof$zze;

    return-void
.end method
