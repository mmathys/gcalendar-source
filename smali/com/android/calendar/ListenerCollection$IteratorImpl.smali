.class Lcom/android/calendar/ListenerCollection$IteratorImpl;
.super Ljava/lang/Object;
.source "ListenerCollection.java"

# interfaces
.implements Lcom/android/calendar/ListenerCollection$ReleasableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ListenerCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/calendar/ListenerCollection$ReleasableIterator",
        "<T",
        "ListenerT;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImpl:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z

.field final synthetic this$0:Lcom/android/calendar/ListenerCollection;


# direct methods
.method private constructor <init>(Lcom/android/calendar/ListenerCollection;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<T",
            "ListenerT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->this$0:Lcom/android/calendar/ListenerCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->mReleased:Z

    .line 67
    iput-object p2, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->mList:Ljava/util/List;

    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->mImpl:Ljava/util/Iterator;

    .line 69
    # operator++ for: Lcom/android/calendar/ListenerCollection;->mInUseCounter:I
    invoke-static {p1}, Lcom/android/calendar/ListenerCollection;->access$108(Lcom/android/calendar/ListenerCollection;)I

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/ListenerCollection;Ljava/util/List;Lcom/android/calendar/ListenerCollection$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/ListenerCollection$IteratorImpl;-><init>(Lcom/android/calendar/ListenerCollection;Ljava/util/List;)V

    return-void
.end method

.method private checkNextAndRelease()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->mImpl:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 79
    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/calendar/ListenerCollection$IteratorImpl;->release()V

    .line 82
    :cond_0
    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/calendar/ListenerCollection$IteratorImpl;->checkNextAndRelease()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "ListenerT;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/calendar/ListenerCollection$IteratorImpl;->checkNextAndRelease()Z

    .line 100
    iget-object v0, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->mImpl:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->mReleased:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->mReleased:Z

    .line 88
    iget-object v0, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->mList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->this$0:Lcom/android/calendar/ListenerCollection;

    # getter for: Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/android/calendar/ListenerCollection;->access$200(Lcom/android/calendar/ListenerCollection;)Ljava/util/List;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/calendar/ListenerCollection$IteratorImpl;->this$0:Lcom/android/calendar/ListenerCollection;

    # operator-- for: Lcom/android/calendar/ListenerCollection;->mInUseCounter:I
    invoke-static {v0}, Lcom/android/calendar/ListenerCollection;->access$110(Lcom/android/calendar/ListenerCollection;)I

    .line 95
    :cond_0
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
