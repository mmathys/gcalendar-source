.class public Lcom/google/android/gms/internal/zznp;
.super Lcom/google/android/gms/internal/zznt;

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zznt",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field zzapN:Lcom/google/android/gms/internal/zzns;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzns",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznt;-><init>()V

    return-void
.end method

.method private zzpe()Lcom/google/android/gms/internal/zzns;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzns",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp;->zzapN:Lcom/google/android/gms/internal/zzns;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zznp$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznp$1;-><init>(Lcom/google/android/gms/internal/zznp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zznp;->zzapN:Lcom/google/android/gms/internal/zzns;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznp;->zzapN:Lcom/google/android/gms/internal/zzns;

    return-object v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznp;->zzpe()Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznp;->zzpe()Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zznp;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznp;->ensureCapacity(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zznp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zznp;->zzpe()Lcom/google/android/gms/internal/zzns;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzns;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
