.class Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;
.super Ljava/lang/Object;
.source "HangoutEditSegment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectHangout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mMutableHangout:Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->access$200(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;)Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/api/events/ModifiableHangout;->setHangout(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/HangoutEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/HangoutEditSegment;

    const/4 v1, 0x1

    # setter for: Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->mChangedFromDefault:Z
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/HangoutEditSegment;->access$302(Lcom/android/calendar/event/edit/segment/HangoutEditSegment;Z)Z

    .line 120
    return-void
.end method
