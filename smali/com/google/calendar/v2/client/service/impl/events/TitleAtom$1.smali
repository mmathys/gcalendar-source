.class Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$1;
.super Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;
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
        "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$1;->this$0:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    invoke-direct {p0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$1;->set(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtomImpl;->set(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom$1;->this$0:Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;

    # invokes: Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->pruneAnnotations(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;->access$000(Lcom/google/calendar/v2/client/service/impl/events/TitleAtom;Ljava/lang/String;)V

    .line 33
    return v0
.end method
