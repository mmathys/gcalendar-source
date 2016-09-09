.class Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$2;
.super Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;
.source "TitleAtom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl",
        "<",
        "Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$2;->this$0:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    invoke-direct {p0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$2;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 47
    :goto_0
    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$2;->this$0:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->mutableText()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;->isApplicableTo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableCollectionImpl;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    check-cast p1, Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$2;->add(Lcom/google/calendar/v2/client/service/api/events/EventAnnotation;)Z

    move-result v0

    return v0
.end method
