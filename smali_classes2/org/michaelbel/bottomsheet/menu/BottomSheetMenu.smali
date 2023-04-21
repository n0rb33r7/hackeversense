.class public Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;
.super Ljava/lang/Object;
.source "BottomSheetMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsQwerty:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mContext:Landroid/content/Context;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    return-void
.end method

.method private findItemIndex(I)I
    .locals 4

    .line 127
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 130
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    invoke-virtual {v3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findItemWithShortcut(ILandroid/view/KeyEvent;)Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;
    .locals 5

    .line 161
    iget-boolean p2, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mIsQwerty:Z

    .line 162
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 166
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    if-eqz p2, :cond_0

    .line 167
    invoke-virtual {v3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->getAlphabeticShortcut()C

    move-result v4

    goto :goto_1

    .line 168
    :cond_0
    invoke-virtual {v3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->getNumericShortcut()C

    move-result v4

    :goto_1
    if-ne p1, v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, v0, v0, v0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    .line 70
    new-instance v7, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    invoke-virtual {p0}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move-object v0, v7

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, v0, v0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 7

    .line 77
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 79
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1

    .line 82
    invoke-virtual {p0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->removeGroup(I)V

    :cond_1
    :goto_1
    if-ge v1, v2, :cond_4

    .line 86
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 87
    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2

    move-object v4, p6

    goto :goto_2

    :cond_2
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v4, p5, v4

    :goto_2
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 88
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_3

    .line 91
    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v4, :cond_3

    .line 92
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v3, p8, p7

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v2
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->findItemIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    return-object p1
.end method

.method public hasVisibleItems()Z
    .locals 5

    .line 147
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 151
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    invoke-virtual {v4}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public performIdentifierAction(II)Z
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->findItemIndex(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 186
    :cond_0
    iget-object p2, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    invoke-virtual {p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->invoke()Z

    move-result p1

    return p1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 195
    :cond_0
    invoke-virtual {p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->invoke()Z

    move-result p1

    return p1
.end method

.method public removeGroup(I)V
    .locals 4

    .line 199
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 203
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    invoke-virtual {v3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->findItemIndex(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 5

    .line 217
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 221
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    .line 222
    invoke-virtual {v3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 223
    invoke-virtual {v3, p2}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 224
    invoke-virtual {v3, p3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setExclusiveCheckable(Z)Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 5

    .line 230
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 234
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    .line 235
    invoke-virtual {v3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 236
    invoke-virtual {v3, p2}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5

    .line 242
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 246
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;

    .line 247
    invoke-virtual {v3}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 248
    invoke-virtual {v3, p2}, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mIsQwerty:Z

    return-void
.end method

.method public size()I
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/michaelbel/bottomsheet/menu/BottomSheetMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
