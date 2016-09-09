.class Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;
.super Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;
.source "PreferencesEditSegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwitchSegmentFactory"
.end annotation


# instance fields
.field private final mSwitchDescription:Ljava/lang/String;

.field private final mSwitchId:I

.field private final mSwitchLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;II)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 187
    iput p4, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchId:I

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchLabel:Ljava/lang/String;

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchDescription:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;I)V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;-><init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;II)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;II)V
    .locals 6

    .prologue
    .line 194
    sget v2, Lcom/android/calendar/R$layout;->preferences_segment_switch:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;II)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;III)V
    .locals 2

    .prologue
    .line 199
    sget v0, Lcom/android/calendar/R$layout;->preferences_segment_switch_with_description:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 200
    iput p3, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchId:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchLabel:Ljava/lang/String;

    .line 203
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchDescription:Ljava/lang/String;

    .line 204
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
    .line 212
    invoke-super {p0, p1}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;->createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;

    .line 213
    iget v1, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchId:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->setSwitchId(I)V

    .line 214
    sget v1, Lcom/android/calendar/R$id;->switch_label:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 215
    iget-object v2, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 218
    sget v1, Lcom/android/calendar/R$id;->switch_description:I

    .line 219
    invoke-virtual {v0, v1}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 220
    iget-object v2, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$SwitchSegmentFactory;->mSwitchDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    return-object v0
.end method
