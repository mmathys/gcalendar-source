.class public Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;
.super Ljava/lang/Object;
.source "GuestSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/segment/GuestSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PeoplePartition"
.end annotation


# instance fields
.field private final mAttendeesView:Lcom/android/calendar/event/AttendeesView;

.field private final mLabel:Landroid/widget/TextView;

.field private final mLabelFormat:I

.field final synthetic this$0:Lcom/android/calendar/event/segment/GuestSegment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/segment/GuestSegment;III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->this$0:Lcom/android/calendar/event/segment/GuestSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1, p2}, Lcom/android/calendar/event/segment/GuestSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/android/calendar/event/AttendeesView;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/android/calendar/event/AttendeesView;

    iput-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    .line 59
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/AttendeesView;->setDelegate(Lcom/android/calendar/event/AttendeesView$Delegate;)V

    .line 63
    :goto_0
    invoke-virtual {p1, p3}, Lcom/android/calendar/event/segment/GuestSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 65
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mLabel:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mLabel:Landroid/widget/TextView;

    # getter for: Lcom/android/calendar/event/segment/GuestSegment;->mLabelTypeFace:Landroid/graphics/Typeface;
    invoke-static {p1}, Lcom/android/calendar/event/segment/GuestSegment;->access$000(Lcom/android/calendar/event/segment/GuestSegment;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    :goto_1
    iput p4, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mLabelFormat:I

    .line 71
    return-void

    .line 61
    :cond_0
    iput-object v2, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    goto :goto_0

    .line 68
    :cond_1
    iput-object v2, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mLabel:Landroid/widget/TextView;

    goto :goto_1
.end method


# virtual methods
.method public getAttendeesView()Lcom/android/calendar/event/AttendeesView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mAttendeesView:Lcom/android/calendar/event/AttendeesView;

    return-object v0
.end method

.method public final getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLabelFormat()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/calendar/event/segment/GuestSegment$PeoplePartition;->mLabelFormat:I

    return v0
.end method
