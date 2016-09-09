.class Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$4;
.super Ljava/lang/Object;
.source "NotificationPrefsEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;
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
.field final synthetic this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$4;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$4;->this$0:Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;

    # getter for: Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->mVibrateSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;->access$600(Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 114
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/segments/NotificationPrefsEditSegment$4;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method
