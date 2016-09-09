.class public Lcom/android/calendar/event/edit/EditSaveButton;
.super Landroid/widget/Button;
.source "EditSaveButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/edit/EditSaveButton$SavedState;
    }
.end annotation


# instance fields
.field private mDoneEnabled:Z

.field private mDoneListener:Landroid/view/View$OnClickListener;

.field private mMode:Z

.field private mSaveEnabled:Z

.field private mSaveListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/calendar/event/edit/EditSaveButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/event/edit/EditSaveButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mSaveEnabled:Z

    .line 59
    iput-boolean v1, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mDoneEnabled:Z

    .line 60
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditSaveButton;->onModeChange()V

    .line 61
    new-instance v0, Lcom/android/calendar/event/edit/EditSaveButton$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/edit/EditSaveButton$1;-><init>(Lcom/android/calendar/event/edit/EditSaveButton;)V

    invoke-super {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/EditSaveButton;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/edit/EditSaveButton;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mSaveListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/edit/EditSaveButton;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mDoneListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private onModeChange()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditSaveButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    if-nez v0, :cond_0

    .line 153
    sget v0, Lcom/android/calendar/R$string;->edit_event_save:I

    .line 152
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditSaveButton;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mSaveEnabled:Z

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditSaveButton;->setEnabled(Z)V

    .line 155
    return-void

    .line 153
    :cond_0
    sget v0, Lcom/android/calendar/R$string;->edit_event_done:I

    goto :goto_0

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mDoneEnabled:Z

    goto :goto_1
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 138
    instance-of v0, p1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;

    if-nez v0, :cond_0

    .line 139
    invoke-super {p0, p1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    check-cast p1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;

    .line 144
    invoke-virtual {p1}, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 145
    iget-boolean v0, p1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mMode:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    .line 146
    iget-boolean v0, p1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mSaveEnabled:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mSaveEnabled:Z

    .line 147
    iget-boolean v0, p1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mDoneEnabled:Z

    iput-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mDoneEnabled:Z

    .line 148
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditSaveButton;->onModeChange()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;

    invoke-direct {v1, v0}, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 130
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    iput-boolean v0, v1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mMode:Z

    .line 131
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mSaveEnabled:Z

    iput-boolean v0, v1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mSaveEnabled:Z

    .line 132
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mDoneEnabled:Z

    iput-boolean v0, v1, Lcom/android/calendar/event/edit/EditSaveButton$SavedState;->mDoneEnabled:Z

    .line 133
    return-object v1
.end method

.method public setAnimatedEnabled(Z)V
    .locals 4

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditSaveButton;->isEnabled()Z

    move-result v0

    .line 101
    if-ne p1, v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditSaveButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 106
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xe1

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/calendar/event/edit/EditSaveButton$2;

    invoke-direct {v1, p0, p1}, Lcom/android/calendar/event/edit/EditSaveButton$2;-><init>(Lcom/android/calendar/event/edit/EditSaveButton;Z)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 106
    :cond_1
    const v0, 0x3f333333    # 0.7f

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/calendar/event/edit/EditSaveButton;->clearAnimation()V

    .line 87
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/EditSaveButton;->setAlpha(F)V

    .line 88
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    if-nez v0, :cond_1

    .line 89
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mSaveEnabled:Z

    .line 93
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    return-void

    .line 87
    :cond_0
    const v0, 0x3f333333    # 0.7f

    goto :goto_0

    .line 91
    :cond_1
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mDoneEnabled:Z

    goto :goto_1
.end method

.method public setMode(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    .line 78
    invoke-direct {p0}, Lcom/android/calendar/event/edit/EditSaveButton;->onModeChange()V

    .line 79
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mMode:Z

    if-nez v0, :cond_0

    .line 120
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mSaveListener:Landroid/view/View$OnClickListener;

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/android/calendar/event/edit/EditSaveButton;->mDoneListener:Landroid/view/View$OnClickListener;

    goto :goto_0
.end method
