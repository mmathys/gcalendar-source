.class Lcom/google/calendar/v2/client/service/common/ProxyAtom$1;
.super Ljava/lang/Object;
.source "ProxyAtom.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/calendar/v2/client/service/common/ProxyAtom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/calendar/v2/client/service/common/ProxyAtom;


# direct methods
.method constructor <init>(Lcom/google/calendar/v2/client/service/common/ProxyAtom;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom$1;->this$0:Lcom/google/calendar/v2/client/service/common/ProxyAtom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/calendar/v2/client/service/common/ProxyAtom$1;->this$0:Lcom/google/calendar/v2/client/service/common/ProxyAtom;

    # getter for: Lcom/google/calendar/v2/client/service/common/ProxyAtom;->atom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ProxyAtom;->access$000(Lcom/google/calendar/v2/client/service/common/ProxyAtom;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method
