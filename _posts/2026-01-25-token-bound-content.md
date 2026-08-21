---
layout: post
title: "Token Gating Isn't Really Web3 - Do This Instead"
date: 2026-01-25 10:00:00 -0500
tags: [essay, writing, history, current affairs]
---

*This is a post I originally wrote in 2023 when I was working at Darkblock, a startup that'd built and shipped an encryption protocol that allowed any artist or creator to encrypt multimedia files and immutably attach those encrypted files (stored on Arweave) to an NFT. The only way to decrypt a Darkblock file - whether it was an ebook, 3D avatar, video, mp3, or high-res version of your photograph - was to prove ownership of the NFT. Sadly, while investors liked the tech, they all thought we were too early to be able to gain enough traction in the current market.*

If you're "gating" access to something, that implies there's a gate—and where there's a gate, there's a gatekeeper trying to protect whatever's beyond the gate.

That is a centralized way of handling digital assets, and comes with all the well-known downsides of centralization—users are at the mercy of the platform, creators risk being de-platformed or losing access if the website disappears, gated content is susceptible to censorship, etc.

Let's use ebooks as an example to further explore the token-gating model.

NFTs have been used successfully to sell digital art and music, but in those cases the actual content is not protected (i.e., the JPEG is right-click-savable and the MP3 is freely listenable). That's because NFTs protect ownership, not the actual digital asset. So what's a creator to do—an author in this example—if they recognize the value of selling their ebook as an NFT, but want to protect their IP so that only buyers can read it? In the past, token gating the ebook behind a website was the only option.

If they token gated their ebooks, the buyers of the NFT would need to connect their wallet and prove they own the NFT in order to access the ebook, which would likely be centrally stored, maybe in a Dropbox or Drive folder, Amazon S3 bucket, or even IPFS.

In this scenario, the NFT is nothing but an access pass—no different than a ticket to get through the gate at a concert. An NFT may represent ownership in an ebook, but if that ebook is token gated, that ownership is illusory.

If this model sounds familiar, it's because it is!

Token gating recreates Kindle's business model of locking ebooks in its walled garden and gating access, though with a username and password rather than an NFT. In fact, this is the same model all web2 content platforms use: Audible, Apple Movies, Spotify, etc. In our existing web2 world, ownership in the digital content we "buy" is illusory. You don't own that movie you "bought" on Apple Movies, or the audiobook you "bought" on Audible, or the album you downloaded onto your phone from Spotify. Rather, you're paying a licensing fee to access and consume the content—one that could be revoked at any time if the platform decides to remove the content.

Whoever controls the walled garden—whether it's gated by a username or NFT—controls the ebook, including the ability to revise or censor the file at any time, or delete it outright. Even if there's no ill intent, what if the file is accidentally moved to a different Dropbox folder or the author forgets to pay their hosting fees? A future buyer of that NFT Book would quickly discover that they don't really own anything but the underlying token.

Amazon has repeatedly demonstrated this problem by censoring ebooks from well-known authors like Roald Dahl, Agatha Christie, and R.L. Stine. People who had bought those ebooks years ago woke up one day to discover the books had been edited in various ways. In other cases, Amazon has deleted entire ebooks from peoples' Kindle libraries for various reasons.

If you haven't already realized, it all comes down to centralization. If digital content is controlled by a centralized platform, it's always at risk of being censored or removed without warning. And it's never truly owned.

The alternative is to use blockchain tech's capabilities to introduce decentralization into the Creator Economy and how people interact with digital content—the same way it's being used to decentralize finance and social media.
Decentralized content means users hold the keys to the content and choose where to consume it, not the platforms.

## The Alternative: Cryptographically Bound Content
So if you want to provide exclusive digital content, but don't want to lock the files in a centralized walled garden and gate access to them, what's the alternative?

Store them in the open—just encrypt them first.

The solution is what I call cryptographically bound content. It takes advantage of blockchain technology and cryptographic techniques like proxy re-encryption to create a decentralized, trustless way of delivering—and monetizing—exclusive content.

The concept is straightforward: encrypt multimedia files and immutably attach them to NFTs, creating content that is decentralized (i.e., not tied to any one platform), portable, composable, and capable of being truly owned by the NFT's owner via decentralized storage and access.

### Cryptographically bound files are portable
By binding encrypted files to the NFT, that content can be fetched and unlocked from any app or marketplace that integrates the underlying protocol. The encrypted files are accessible regardless of the status of any single, centralized website or platform.

For example, you could unlock and read an NFT comic book by connecting your wallet to the project's website, a dedicated reader app, or even through a marketplace interface—wherever the protocol is integrated.

### Cryptographically bound files are composable
Any app or game that incorporates this approach can integrate an owner's bound files into its product. Remember the hype around Loot Project and its simple text-based NFTs that included various weapons and magical armor as traits? People touted it as an example of how NFTs can be composable and how a disparate network of games, marketplaces, and other apps could be developed that integrated a person's Loot NFTs. Cryptographically bound content enables entire digital files to be composable rather than just traits.

Imagine a music player that scans your wallet for bound MP3s, decrypts them on the fly, and plays them. Or a game or metaverse that uploads your bound 3D assets at runtime. Or a digital ebook reader that pulls in all bound PDFs and EPUBs from across your entire NFT collection.

### Cryptographically bound files can be truly owned
To shift from the platform-centric content model ubiquitous in web2 to a web3 content model that empowers creators and users alike, decentralization is necessary. This requires removing centralized authority from three areas: storage, access, and encryption.

Storage — Encrypted files need to live on permanent, decentralized storage like Arweave rather than S3 buckets or Dropbox folders that can disappear.

Access — By binding files to the NFT, the content travels with the NFT. The owner decides where they access those files, which brings us back to the portability described above.

Encryption — This is the hardest piece. True decentralization requires a network of nodes incentivized to create and store encryption keys in trusted execution environments, rather than relying on a single service provider.

The ultimate vision is for a person to be able to unlock and access their NFT's content—whether a film or ebook—from anywhere they interact with their NFTs, whether that's their wallet or a marketplace.

## Conclusion
While token gating may be a familiar and convenient way to provide access to exclusive content, it ultimately falls short when it comes to decentralization, flexibility, censorship-resistance, and providing true ownership over digital content. It's also short-sighted.

If an author relies on token gating to sell an ebook, someone who mints one today can be confident the ebook will be accessible to them. But what about someone who wants to buy that ebook NFT 10 years from now? Can they be confident that if they buy the NFT it will get them access to an ebook as opposed to running into a 404 message or broken Dropbox link? No, they can't. But if the ebook is cryptographically bound content stored on permanent infrastructure, they can have confidence it'll stick around.

If we believe NFTs provide the delivery and ownership technology of the future, then we need to be thinking in decades—not days.

For a Digital Goods Economy to flourish, it will need to not only leverage blockchain technology to track ownership and provenance, but be built atop decentralized protocols that enable digital assets to be permanently accessible, censorship-resistant, and not right-click savable.

As Marc Andreessen always reminds us, "Buy physical copies of any book you plan to read in the future. Do it now."

Hopefully one day he'll feel confident adding: "…or encrypted copies of digital books stored via a decentralized protocol."
