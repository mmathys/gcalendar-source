.class Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection$1;
.super Ljava/lang/Object;
.source "GwtExportableUnmodifiableCollection.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final i:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection;)V
    .locals 1

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection$1;->this$0:Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection$1;->this$0:Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection;

    iget-object v0, v0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection$1;->i:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

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
    .line 63
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/GwtExportableUnmodifiableCollection$1;->i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
