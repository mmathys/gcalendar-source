.class Lcom/android/calendar/event/edit/segment/ColorEditSegment$1;
.super Ljava/lang/Object;
.source "ColorEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/ColorEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/ColorEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/ColorEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->mMutableColor:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/ColorEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->getValueOrNull(Lcom/google/calendar/v2/client/service/common/ObservableAtom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    # invokes: Lcom/android/calendar/event/edit/segment/ColorEditSegment;->updateColorSet(Lcom/google/calendar/v2/client/service/api/common/Color;)V
    invoke-static {v1, v0}, Lcom/android/calendar/event/edit/segment/ColorEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/ColorEditSegment;Lcom/google/calendar/v2/client/service/api/common/Color;)V

    .line 74
    return-void
.end method
