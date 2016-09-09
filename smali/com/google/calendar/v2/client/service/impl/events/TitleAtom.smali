.class Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;
.super Ljava/lang/Object;
.source "TitleAtom.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Observable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final annotations:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final text:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$1;-><init>(Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->text:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 37
    new-instance v0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$2;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$2;-><init>(Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->annotations:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    .line 52
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 53
    if-eqz p2, :cond_0

    .line 54
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    .line 55
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->pruneAnnotations(Ljava/lang/String;)V

    return-void
.end method

.method public static equalValue(Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;)Z
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->equalValue(Lcom/google/calendar/v2/client/service/common/ObservableAtom;Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/calendar/v2/client/service/common/ObservableCollections;->equalContents(Lcom/google/calendar/v2/client/service/common/ObservableCollection;Lcom/google/calendar/v2/client/service/common/ObservableCollection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pruneAnnotations(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    .line 63
    invoke-virtual {v0, p1}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->isApplicableTo(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 64
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->clear()V

    .line 72
    :goto_1
    return-void

    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 78
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->dispose()V

    .line 89
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->dispose()V

    .line 90
    return-void
.end method

.method public mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->annotations:Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    return-object v0
.end method

.method public mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->text:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 83
    invoke-virtual {p0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableAnnotations()Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollection;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 84
    return-void
.end method
