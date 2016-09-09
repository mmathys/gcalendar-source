.class Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;
.super Ljava/lang/Object;
.source "HomeTimezoneEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mUseDeviceTimezoneSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->access$000(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mTimezoneButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->access$100(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-static {}, Lcom/android/calendar/time/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->mMutableTimezone:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    invoke-static {v1}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->access$200(Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->set(Ljava/lang/Object;)Z

    .line 75
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;->this$0:Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectHomeTimezone;->getCachedHomeTimezone()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/segments/HomeTimezoneEditSegment$1;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
