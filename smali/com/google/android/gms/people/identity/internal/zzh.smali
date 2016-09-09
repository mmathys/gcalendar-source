.class public Lcom/google/android/gms/people/identity/internal/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/identity/IdentityApi;


# static fields
.field private static final zzbmC:Lcom/google/android/gms/people/identity/PersonFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/people/identity/PersonFactory",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbmD:Lcom/google/android/gms/people/identity/PersonListFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/people/identity/PersonListFactory",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/people/identity/internal/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/zzh;->zzbmC:Lcom/google/android/gms/people/identity/PersonFactory;

    new-instance v0, Lcom/google/android/gms/people/identity/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/people/identity/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/people/identity/internal/zzh;->zzbmD:Lcom/google/android/gms/people/identity/PersonListFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
