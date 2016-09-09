.class Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;
.super Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;
.source "TimelyPreferencesEditSegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSegmentFactory"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mHeaderText:Ljava/lang/String;

.field private final mHeaderTypeface:Landroid/graphics/Typeface;

.field final synthetic this$0:Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;Landroid/graphics/Typeface;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;->this$0:Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;

    .line 89
    invoke-direct {p0, p2, p3, p4}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 90
    iput-object p5, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;->mHeaderTypeface:Landroid/graphics/Typeface;

    .line 91
    # getter for: Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->mSegmentIdsToLabels:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->access$000(Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;->mHeaderText:Ljava/lang/String;

    .line 92
    # getter for: Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->mSegmentIdsToAccounts:Ljava/util/Map;
    invoke-static {p1}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->access$100(Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;->mAccount:Landroid/accounts/Account;

    .line 93
    return-void
.end method


# virtual methods
.method public createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;->createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    .line 98
    instance-of v1, v0, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;

    if-nez v1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid edit segment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    check-cast v0, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;

    .line 103
    sget v1, Lcom/android/calendar/R$id;->account_label:I

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 104
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;->mHeaderTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;->mHeaderText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory$AccountSegmentFactory;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/settings/AccountAspectEditSegment;->setAccount(Landroid/accounts/Account;)V

    .line 109
    return-object v0
.end method
