.class Lcom/google/android/gms/internal/zznp$1;
.super Lcom/google/android/gms/internal/zzns;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zznp;->zzpe()Lcom/google/android/gms/internal/zzns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzns",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic zzapO:Lcom/google/android/gms/internal/zznp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zznp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzns;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznp;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zznp;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    return-object v0
.end method

.method protected colGetSize()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    iget v0, v0, Lcom/google/android/gms/internal/zznp;->mSize:I

    return v0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznp;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zznp;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznp;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zznp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zznp;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznp$1;->zzapO:Lcom/google/android/gms/internal/zznp;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zznp;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
