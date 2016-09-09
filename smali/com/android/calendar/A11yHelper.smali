.class public Lcom/android/calendar/A11yHelper;
.super Ljava/lang/Object;
.source "A11yHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/A11yHelper$SnackbarA11yCallback;,
        Lcom/android/calendar/A11yHelper$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/calendar/A11yHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/A11yHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/A11yHelper$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/calendar/A11yHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/calendar/A11yHelper;
    .locals 1

    .prologue
    .line 22
    # getter for: Lcom/android/calendar/A11yHelper$InstanceHolder;->INSTANCE:Lcom/android/calendar/A11yHelper;
    invoke-static {}, Lcom/android/calendar/A11yHelper$InstanceHolder;->access$000()Lcom/android/calendar/A11yHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getInstance()Lcom/android/calendar/timely/settings/data/CalendarProperties;

    move-result-object v0

    const/4 v1, 0x6

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/data/CalendarProperties;->getPropertyValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 36
    :goto_0
    return v0

    .line 35
    :cond_0
    sget-object v1, Lcom/android/calendar/A11yHelper;->TAG:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Value provided by GeneralSettingsManager was invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    invoke-static {p1}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyAccessibilitySubtreeChanged(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/A11yHelper;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 45
    :cond_0
    const/16 v0, 0x800

    .line 46
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 47
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 50
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method
