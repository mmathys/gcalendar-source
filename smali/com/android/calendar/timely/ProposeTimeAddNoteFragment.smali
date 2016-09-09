.class public Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;
.super Landroid/app/Fragment;
.source "ProposeTimeAddNoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;
    }
.end annotation


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mEndMillis:J

.field private mEventColor:I

.field private mHasProposedTime:Z

.field private mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

.field private mListener:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;

.field private mNote:Landroid/widget/EditText;

.field private mStartMillis:J

.field private mSubtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mListener:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mNote:Landroid/widget/EditText;

    return-object v0
.end method

.method public static newInstance(IJJLjava/lang/String;)Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;

    invoke-direct {v0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 85
    const-string v2, "event_color"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v2, "start_millis"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 87
    const-string v2, "end_millis"

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    const-string v2, "note"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v0
.end method

.method private setupStatusbar()V
    .locals 4

    .prologue
    .line 222
    .line 223
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->createInstance(Landroid/view/Window;)Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;

    move-result-object v0

    .line 225
    iget v1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mEventColor:I

    .line 226
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$color;->transparent_black_20:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 225
    invoke-static {v1, v2}, Lcom/android/calendar/Utils;->blendColor(II)I

    move-result v1

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setStatusbarColor(I)V

    .line 228
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/utils/statusbar/StatusbarAnimatorCompat;->setLightStatusbar(Z)V

    .line 229
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mNote:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 210
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 106
    sget v1, Lcom/android/calendar/R$layout;->propose_time_note_fragment:I

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 107
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "event_color"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mEventColor:I

    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "start_millis"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "end_millis"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mHasProposedTime:Z

    .line 110
    iget-boolean v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mHasProposedTime:Z

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "start_millis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mStartMillis:J

    .line 112
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "end_millis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mEndMillis:J

    .line 115
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->toolbar:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 116
    iget v1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mEventColor:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 117
    sget v1, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v2, Lcom/android/calendar/R$string;->add_note_title:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    sget v1, Lcom/android/calendar/R$id;->subtitle:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mSubtitle:Landroid/widget/TextView;

    .line 119
    const/16 v6, 0x13

    .line 122
    invoke-static {}, Lcom/android/calendar/DateTimeFormatHelper;->getInstance()Lcom/android/calendar/DateTimeFormatHelper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mStartMillis:J

    iget-wide v4, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mEndMillis:J

    .line 123
    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/DateTimeFormatHelper;->getDateRangeText(JJI)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v1, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$1;-><init>(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    sget v1, Lcom/android/calendar/R$id;->action_done:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mDoneButton:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mDoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$2;-><init>(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    sget v0, Lcom/android/calendar/R$id;->note:I

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mNote:Landroid/widget/EditText;

    .line 144
    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "note"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mNote:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :cond_2
    new-instance v0, Lcom/android/calendar/KeyboardManipulator;

    invoke-virtual {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mNote:Landroid/widget/EditText;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/KeyboardManipulator;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

    .line 179
    invoke-direct {p0}, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->setupStatusbar()V

    .line 181
    return-object v7
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 194
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mNote:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 196
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

    invoke-virtual {v0}, Lcom/android/calendar/KeyboardManipulator;->requestShow()V

    .line 197
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 202
    iget-object v0, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mKeyboardManipulator:Lcom/android/calendar/KeyboardManipulator;

    invoke-virtual {v0}, Lcom/android/calendar/KeyboardManipulator;->requestHide()V

    .line 203
    return-void
.end method

.method public setFragmentListener(Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/calendar/timely/ProposeTimeAddNoteFragment;->mListener:Lcom/android/calendar/timely/ProposeTimeAddNoteFragment$Listener;

    .line 214
    return-void
.end method
