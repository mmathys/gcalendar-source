.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuestsCanInviteOthersListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->mGuestsCanInviteSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1300(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateToggleButtonVisibility()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1400(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1048
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1043
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$GuestsCanInviteOthersListener;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
