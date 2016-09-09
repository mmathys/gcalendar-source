.class public Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$FragmentSegmentFactory;
.super Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;
.source "PreferencesEditSegmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentSegmentFactory"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/editor/AspectKey;I)V
    .locals 1

    .prologue
    .line 234
    sget v0, Lcom/android/calendar/R$layout;->preferences_segment_fragment:I

    invoke-direct {p0, p1, v0, p2}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;-><init>(Landroid/content/Context;ILcom/android/calendar/editor/AspectKey;)V

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$FragmentSegmentFactory;->mLabel:Ljava/lang/String;

    .line 236
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
    .line 240
    invoke-super {p0, p1}, Lcom/android/calendar/editor/BaseEditSegmentFactory$LayoutInflaterFactoryMethodWithAspect;->createSegment(Ljava/lang/String;)Lcom/android/calendar/editor/EditSegment;

    move-result-object v1

    .line 241
    sget v0, Lcom/android/calendar/R$id;->fragment_label:I

    invoke-virtual {v1, v0}, Lcom/android/calendar/editor/EditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    iget-object v2, p0, Lcom/android/calendar/timely/settings/PreferencesEditSegmentFactory$FragmentSegmentFactory;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-object v1
.end method
