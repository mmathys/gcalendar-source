.class public Lcom/android/calendar/groove/GrooveScheduleView;
.super Landroid/widget/LinearLayout;
.source "GrooveScheduleView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/calendar/groove/GrooveScheduleView;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/groove/GrooveScheduleView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method public changeTheme(I)V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/calendar/groove/GrooveScheduleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    .line 24
    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$color;->groove_wizard_button_white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 27
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/android/calendar/groove/AnimatorHelper;->runColorChangeAnimation(Landroid/view/ViewGroup;II)V

    .line 28
    return-void

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/groove/GrooveScheduleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$color;->groove_wizard_button_black:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method
