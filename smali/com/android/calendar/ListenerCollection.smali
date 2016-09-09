.class public Lcom/android/calendar/ListenerCollection;
.super Ljava/lang/Object;
.source "ListenerCollection.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ListenerCollection$ReleasableIterator;,
        Lcom/android/calendar/ListenerCollection$IteratorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "ListenerT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<T",
        "ListenerT;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInUseCounter:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<T",
            "ListenerT;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/calendar/ListenerCollection;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/ListenerCollection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/ListenerCollection;->mInUseCounter:I

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$108(Lcom/android/calendar/ListenerCollection;)I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/android/calendar/ListenerCollection;->mInUseCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/calendar/ListenerCollection;->mInUseCounter:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/calendar/ListenerCollection;)I
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lcom/android/calendar/ListenerCollection;->mInUseCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/calendar/ListenerCollection;->mInUseCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/calendar/ListenerCollection;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerT;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/android/calendar/ListenerCollection;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/android/calendar/ListenerCollection;->TAG:Ljava/lang/String;

    const-string v1, "Copying listeners on add"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    .line 41
    iput v3, p0, Lcom/android/calendar/ListenerCollection;->mInUseCounter:I

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method isInUse()Z
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/calendar/ListenerCollection;->mInUseCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/android/calendar/ListenerCollection$ReleasableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/ListenerCollection$ReleasableIterator",
            "<T",
            "ListenerT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/android/calendar/ListenerCollection$IteratorImpl;

    iget-object v1, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calendar/ListenerCollection$IteratorImpl;-><init>(Lcom/android/calendar/ListenerCollection;Ljava/util/List;Lcom/android/calendar/ListenerCollection$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/calendar/ListenerCollection;->iterator()Lcom/android/calendar/ListenerCollection$ReleasableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "ListenerT;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/android/calendar/ListenerCollection;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/calendar/ListenerCollection;->TAG:Ljava/lang/String;

    const-string v1, "Copying listeners on remove"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    .line 50
    iput v3, p0, Lcom/android/calendar/ListenerCollection;->mInUseCounter:I

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/ListenerCollection;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
