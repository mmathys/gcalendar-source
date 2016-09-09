.class Lcom/android/calendar/event/EventInfoFragment$27;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoFragment;->bodyLayoutReport(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mDensity:F

.field mPoint:[I

.field final synthetic this$0:Lcom/android/calendar/event/EventInfoFragment;

.field final synthetic val$eventInfo:Landroid/view/ViewGroup;

.field final synthetic val$resources:Landroid/content/res/Resources;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoFragment;Landroid/content/res/Resources;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2947
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoFragment$27;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$resources:Landroid/content/res/Resources;

    iput-object p3, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$eventInfo:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2949
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    .line 2951
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    return-void
.end method

.method private logGuestSegmentViews(Lcom/android/calendar/event/segment/GuestSegment;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2995
    invoke-virtual {p1}, Lcom/android/calendar/event/segment/GuestSegment;->getMeasuredHeight()I

    move-result v0

    .line 2996
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v3, "segment=GuestSegment* %.1fdp"

    new-array v5, v2, [Ljava/lang/Object;

    int-to-float v0, v0

    iget v6, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-static {v1, v3, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2997
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/segment/GuestSegment;->getLocationOnScreen([I)V

    .line 2998
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v1, v0, v2

    .line 3001
    sget v0, Lcom/android/calendar/R$id;->guest_count:I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/segment/GuestSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3002
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 3003
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v3, " guest_count"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3004
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v1, v1, v2

    .line 3005
    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v3, v3, v2

    invoke-direct {p0, v0, v3, v11}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextView(Landroid/widget/TextView;IF)F

    :cond_0
    move v0, v1

    move v3, v0

    move v0, v2

    .line 3009
    :goto_0
    invoke-virtual {p1}, Lcom/android/calendar/event/segment/GuestSegment;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3011
    invoke-virtual {p1, v0}, Lcom/android/calendar/event/segment/GuestSegment;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3012
    instance-of v5, v1, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v5, v0, 0x1

    .line 3013
    invoke-virtual {p1}, Lcom/android/calendar/event/segment/GuestSegment;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3014
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Lcom/android/calendar/event/segment/GuestSegment;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3015
    instance-of v5, v0, Lcom/android/calendar/event/AttendeesView;

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 3017
    check-cast v0, Lcom/android/calendar/event/AttendeesView;

    .line 3018
    iget-object v5, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    invoke-virtual {v1, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3019
    iget-object v5, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v7, " label tile >%.1fdp"

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v9, v9, v2

    sub-int v3, v9, v3

    int-to-float v3, v3

    iget v9, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v3, v9

    .line 3020
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v4

    .line 3019
    invoke-static {v5, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3021
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v3, v3, v2

    .line 3022
    check-cast v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v5, v5, v2

    invoke-direct {p0, v1, v5, v11}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextView(Landroid/widget/TextView;IF)F

    move v5, v3

    move v3, v4

    .line 3024
    :goto_1
    invoke-virtual {v0}, Lcom/android/calendar/event/AttendeesView;->getChildCount()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 3025
    invoke-virtual {v0, v3}, Lcom/android/calendar/event/AttendeesView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3026
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1

    .line 3027
    check-cast v1, Landroid/view/ViewGroup;

    .line 3028
    iget-object v7, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 3029
    iget-object v7, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v8, " attendee >%.1fdp (%.1fdp)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v10, v10, v2

    sub-int v5, v10, v5

    int-to-float v5, v5

    iget v10, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v5, v10

    .line 3030
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v9, v4

    .line 3031
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget v10, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v9, v2

    .line 3029
    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3032
    iget-object v5, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v5, v5, v2

    .line 3033
    iget-object v7, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v7, v7, v2

    invoke-direct {p0, v1, v7}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextViews(Landroid/view/ViewGroup;I)F

    .line 3024
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    move v0, v6

    move v1, v5

    .line 3009
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 3039
    :cond_3
    return-void

    :cond_4
    move v0, v6

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method private logSegmentViews(Lcom/android/calendar/event/segment/InfoSegmentLayout;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 3045
    invoke-virtual {p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getMeasuredHeight()I

    move-result v4

    .line 3046
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v1, "segment=%s %.1fdp"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    int-to-float v5, v4

    iget v6, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v5, v6

    .line 3047
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v9

    .line 3046
    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3048
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getLocationOnScreen([I)V

    .line 3049
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    aget v5, v0, v9

    .line 3051
    invoke-direct {p0, p1, v5}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextViews(Landroid/view/ViewGroup;I)F

    move-result v0

    .line 3052
    cmpl-float v1, v0, v10

    if-nez v1, :cond_4

    move v1, v2

    move v3, v0

    .line 3054
    :goto_0
    invoke-virtual {p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 3055
    invoke-virtual {p1, v1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3056
    instance-of v6, v0, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 3057
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v6, " group=%s"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v3, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3058
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v5}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextViews(Landroid/view/ViewGroup;I)F

    move-result v3

    .line 3059
    cmpl-float v0, v3, v10

    if-lez v0, :cond_2

    .line 3065
    :cond_0
    :goto_1
    cmpl-float v0, v3, v10

    if-eqz v0, :cond_1

    .line 3066
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v5, " trail margin=%.1fdp %s"

    new-array v6, v11, [Ljava/lang/Object;

    int-to-float v0, v4

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v0, v3

    .line 3067
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v6, v2

    .line 3068
    invoke-virtual {p1}, Lcom/android/calendar/event/segment/InfoSegmentLayout;->getPaddingBottom()I

    move-result v0

    if-nez v0, :cond_3

    .line 3069
    const-string v0, "(no bottom padding)"

    :goto_2
    aput-object v0, v6, v9

    .line 3066
    invoke-static {v1, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3071
    :cond_1
    return-void

    .line 3054
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3069
    :cond_3
    const-string v0, "(bottom padding)"

    goto :goto_2

    :cond_4
    move v3, v0

    goto :goto_1
.end method

.method private logTextView(Landroid/widget/TextView;IF)F
    .locals 12

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 3123
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mPoint:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v3, v0, p2

    .line 3124
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 3125
    invoke-virtual {p1}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v1, v0

    .line 3126
    iget-object v2, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v5, "  0x%08x: baseLine=%.1fdp, height=%.1fdp%s"

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3128
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x1

    iget v7, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float v7, v1, v7

    .line 3129
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x2

    .line 3130
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x3

    const/4 v0, 0x1

    if-le v4, v0, :cond_1

    .line 3131
    const-string v0, ", lines=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v6, v7

    .line 3126
    invoke-static {v2, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3132
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v2, "    %8s> baseLine=%.1fdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, " "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sub-float v7, v1, p3

    iget v8, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v7, v8

    .line 3135
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3133
    invoke-static {v0, v2, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3137
    :cond_0
    const/4 v0, 0x1

    if-le v4, v0, :cond_2

    .line 3138
    const/4 v0, 0x1

    move v11, v0

    move v0, v1

    move v1, v11

    :goto_1
    if-ge v1, v4, :cond_3

    .line 3140
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v2

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 3141
    iget-object v5, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v6, "    %8sv baseLine=%.1fdp"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, " "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sub-float v0, v2, v0

    iget v9, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v0, v9

    .line 3143
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v7, v8

    .line 3141
    invoke-static {v5, v6, v7}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3138
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    .line 3131
    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3146
    :cond_3
    return v0
.end method

.method private logTextViewFromBottom(Landroid/widget/TextView;I)V
    .locals 11

    .prologue
    .line 3095
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    .line 3096
    add-int/lit8 v3, v2, -0x1

    .line 3097
    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v1, v0

    .line 3098
    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v5, "  0x%08x: baseLine=%.1fdp, height=%.1fdp%s"

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3100
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x1

    iget v7, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float v7, v1, v7

    .line 3101
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v0, 0x2

    .line 3102
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x3

    const/4 v0, 0x1

    if-le v2, v0, :cond_0

    .line 3104
    const-string v0, ", lines=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v6, v7

    .line 3098
    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3106
    const/4 v0, 0x1

    if-le v2, v0, :cond_1

    .line 3108
    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 3110
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    .line 3111
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v4, "    %8sv baseLine=%.1fdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, " "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sub-float v1, v2, v1

    iget v7, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v1, v7

    .line 3113
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v6

    .line 3111
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3108
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_1

    .line 3104
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 3116
    :cond_1
    return-void
.end method

.method private logTextViews(Landroid/view/ViewGroup;I)F
    .locals 1

    .prologue
    .line 3074
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextViews(Landroid/view/ViewGroup;IF)F

    move-result v0

    return v0
.end method

.method private logTextViews(Landroid/view/ViewGroup;IF)F
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3078
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3079
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3080
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 3081
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextView(Landroid/widget/TextView;IF)F

    move-result p3

    .line 3078
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3082
    :cond_1
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 3083
    iget-object v3, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v4, " group=%s %.1fdp"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    .line 3084
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 3083
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3085
    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextViews(Landroid/view/ViewGroup;IF)F

    move-result p3

    goto :goto_1

    .line 3088
    :cond_2
    return p3
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 2955
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$eventInfo:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    move v1, v2

    .line 2958
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$eventInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 2959
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$eventInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2960
    instance-of v3, v0, Lcom/android/calendar/event/segment/GuestSegment;

    if-eqz v3, :cond_1

    .line 2961
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 2962
    check-cast v0, Lcom/android/calendar/event/segment/GuestSegment;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment$27;->logGuestSegmentViews(Lcom/android/calendar/event/segment/GuestSegment;)V

    .line 2958
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2963
    :cond_1
    instance-of v3, v0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    if-eqz v3, :cond_0

    .line 2964
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 2965
    check-cast v0, Lcom/android/calendar/event/segment/InfoSegmentLayout;

    invoke-direct {p0, v0}, Lcom/android/calendar/event/EventInfoFragment$27;->logSegmentViews(Lcom/android/calendar/event/segment/InfoSegmentLayout;)V

    goto :goto_1

    .line 2970
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoFragment$27;->this$0:Lcom/android/calendar/event/EventInfoFragment;

    # getter for: Lcom/android/calendar/event/EventInfoFragment;->mView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoFragment;->access$1800(Lcom/android/calendar/event/EventInfoFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->event_info_screen:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2971
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2972
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 2973
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2974
    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 2975
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2976
    check-cast v0, Landroid/widget/TextView;

    .line 2977
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    .line 2978
    add-int/lit8 v3, v3, -0x1

    .line 2979
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v3

    int-to-float v3, v3

    .line 2980
    iget-object v4, p0, Lcom/android/calendar/event/EventInfoFragment$27;->val$tag:Ljava/lang/String;

    const-string v5, "title headerHeight=%.1fdp lastBaseLine=%.1fdp"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    int-to-float v7, v1

    iget v8, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v7, v8

    .line 2981
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x1

    iget v7, p0, Lcom/android/calendar/event/EventInfoFragment$27;->mDensity:F

    div-float/2addr v3, v7

    .line 2982
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2980
    invoke-static {v4, v5, v6}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2984
    invoke-direct {p0, v0, v1}, Lcom/android/calendar/event/EventInfoFragment$27;->logTextViewFromBottom(Landroid/widget/TextView;I)V

    .line 2987
    :cond_3
    return-void
.end method
