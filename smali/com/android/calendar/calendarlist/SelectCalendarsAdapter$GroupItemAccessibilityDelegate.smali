.class Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$GroupItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "SelectCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;


# direct methods
.method private constructor <init>(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$GroupItemAccessibilityDelegate;->this$0:Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$1;)V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0, p1}, Lcom/android/calendar/calendarlist/SelectCalendarsAdapter$GroupItemAccessibilityDelegate;-><init>(Lcom/android/calendar/calendarlist/SelectCalendarsAdapter;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 622
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 623
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 624
    return-void
.end method
