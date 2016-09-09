.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$3;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$3;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteOthers:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$500(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 213
    :cond_0
    return-void
.end method
