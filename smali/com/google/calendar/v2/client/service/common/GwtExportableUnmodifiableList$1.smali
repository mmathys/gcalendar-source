.class Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;
.super Ljava/lang/Object;
.source "GwtExportableUnmodifiableList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;I)V
    .locals 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->this$0:Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;

    iput p2, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->this$0:Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList;->list:Ljava/util/List;

    iget v1, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->val$index:I

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->i:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableList$1;->i:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
