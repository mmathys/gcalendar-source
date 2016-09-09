.class public Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "ConferenceCallView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/ConferenceCallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConferenceCallLinkMovementMethod"
.end annotation


# static fields
.field private static sInstance:Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;->sInstance:Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;

    invoke-direct {v0}, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;->sInstance:Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;->sInstance:Lcom/android/calendar/event/ConferenceCallView$ConferenceCallLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 75
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 76
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 78
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    .line 79
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    .line 82
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    .line 84
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 85
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 86
    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 88
    const-class v2, Lcom/android/calendar/event/ConferenceCallSpan;

    invoke-interface {p2, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/calendar/event/ConferenceCallSpan;

    .line 89
    array-length v2, v0

    if-eqz v2, :cond_1

    .line 90
    check-cast p1, Lcom/android/calendar/event/ConferenceCallView;

    .line 91
    # getter for: Lcom/android/calendar/event/ConferenceCallView;->mListener:Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;
    invoke-static {p1}, Lcom/android/calendar/event/ConferenceCallView;->access$000(Lcom/android/calendar/event/ConferenceCallView;)Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    # getter for: Lcom/android/calendar/event/ConferenceCallView;->mListener:Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;
    invoke-static {p1}, Lcom/android/calendar/event/ConferenceCallView;->access$000(Lcom/android/calendar/event/ConferenceCallView;)Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/calendar/event/ConferenceCallSpan;->getConferenceNumber()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Lcom/android/calendar/event/ConferenceCallView$OnConferenceNumberClickListener;->onClick(Lcom/android/calendar/event/ConferenceCallView;Ljava/lang/String;)V

    :cond_0
    move v0, v1

    .line 99
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
